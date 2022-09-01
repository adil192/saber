
import 'dart:collection';
import 'dart:convert';
import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';
import 'package:flutter/foundation.dart';
import 'package:nextcloud/nextcloud.dart';
import 'package:saber/data/file_manager.dart';
import 'package:saber/data/nextcloud/nextcloud_client_extension.dart';
import 'package:saber/data/prefs.dart';

abstract class FileSyncer {

  /// the file extension of an encrypted base64 note
  static const String _encExtension = ".sbe";

  static EncPref<List<String>> get _uploadQueue => Prefs.fileSyncUploadQueue;
  static final Queue<SyncFile> _downloadQueue = Queue();

  static NextCloudClient? _client;

  static bool _isUploadingFile = false;

  static final ValueNotifier<int?> filesDone = ValueNotifier<int?>(null);
  static int get filesToSync => _uploadQueue.value.length + _downloadQueue.length;

  static void startDownloads() async {
    _client ??= await NextCloudClientExtension.withSavedDetails();
    if (_client == null) return;

    // Get list of remote files from server
    List<WebDavFile> remoteFiles = await _client!.webDav.ls(
        FileManager.appRootDirectoryPrefix,
        props: {WebDavProps.davLastModified}
    );

    // Add each file to download queue if needed
    await Future.wait(remoteFiles.map((WebDavFile file) => _addToDownloadQueue(file)));
    filesDone.value = 0;

    // Start downloading files one by one
    while (_downloadQueue.isNotEmpty) {
      final SyncFile file = _downloadQueue.removeFirst();
      await _downloadFile(file);
      if (filesDone.value != null) {
        filesDone.value = filesDone.value! + 1;
      }
    }
  }

  /// Queues a file to be uploaded
  static void addToUploadQueue(String filePath) {
    if (_uploadQueue.value.contains(filePath)) return; // don't add it again
    _uploadQueue.value.add(filePath);
    _uploadQueue.notifyListeners();
    _uploadFileFromQueue();
  }

  /// Picks the first filePath from [_uploadQueue] and uploads it
  static Future _uploadFileFromQueue() async {
    if (_isUploadingFile) return;
    if (_uploadQueue.value.isEmpty) return;

    _client ??= await NextCloudClientExtension.withSavedDetails();
    if (_client == null) return;

    try {
      _isUploadingFile = true;

      final String filePathUnencrypted = _uploadQueue.value.removeAt(0);
      _uploadQueue.notifyListeners();

      final Encrypter encrypter = await _client!.encrypter;
      final IV iv = IV.fromBase64(Prefs.iv.value);
      final String filePathEncrypted = encrypter.encrypt(filePathUnencrypted, iv: iv).base16;
      final String filePathRemote = "${FileManager.appRootDirectoryPrefix}/$filePathEncrypted$_encExtension";

      final syncFile = SyncFile(remotePath: filePathRemote, localPath: filePathUnencrypted);
      if (!await _shouldLocalFileBeKept(syncFile)) {
        // remote file is newer; download it instead
        _addToDownloadQueueWithoutChecks(syncFile);
        return;
      }

      // try 3 times to read file (may fail because file is locked by another process/thread)
      String? localDataUnencrypted;
      for (int i = 0; i < 3; ++i) {
        if (i > 0) await Future.delayed(const Duration(milliseconds: 100));
        localDataUnencrypted = await FileManager.readFile(filePathUnencrypted);
        if (localDataUnencrypted != null) break;
      }
      if (localDataUnencrypted == null) {
        if (kDebugMode) print("Failed to read file $filePathUnencrypted to upload");
        return;
      }
      final String localDataEncrypted = encrypter.encrypt(localDataUnencrypted, iv: iv).base64;

      const Utf8Encoder encoder = Utf8Encoder();
      await _client!.webDav.upload(encoder.convert(localDataEncrypted), filePathRemote);
    } finally {
      _isUploadingFile = false;
      _uploadFileFromQueue();
    }
  }

  static Future _addToDownloadQueue(WebDavFile file) async {
    final Encrypter encrypter = await _client!.encrypter;
    final IV iv = IV.fromBase64(Prefs.iv.value);

    final String filePathRemote = file.path;
    String filePathEncrypted = filePathRemote;

    // remove parent directory from path
    if (filePathEncrypted.startsWith(FileManager.appRootDirectoryPrefix)) {
      // with the leading slash; remove "/Saber/"
      filePathEncrypted = filePathEncrypted.substring(FileManager.appRootDirectoryPrefix.length + 1);
    } else if (filePathEncrypted.startsWith(FileManager.appRootDirectoryPrefix.substring(1))) {
      // without the leading slash; remove "Saber/"
      filePathEncrypted = filePathEncrypted.substring(FileManager.appRootDirectoryPrefix.length);
    } else {
      if (kDebugMode) print("remote file not in app root: $filePathEncrypted");
      return;
    }

    // remove extension
    if (filePathEncrypted.endsWith(_encExtension)) {
      filePathEncrypted = filePathEncrypted.substring(0, filePathEncrypted.length - _encExtension.length);
    } else {
      if (kDebugMode) print("remote file not in recognised encrypted format: $filePathRemote");
      return;
    } // todo: also sync config.sbc

    // decrypt file path
    final String filePathUnencrypted = encrypter.decrypt16(filePathEncrypted, iv: iv);

    final syncFile = SyncFile(
      remotePath: filePathRemote,
      localPath: filePathUnencrypted,
      webDavFile: file,
    );
    if (!await _shouldLocalFileBeKept(syncFile)) {
      _addToDownloadQueueWithoutChecks(syncFile);
    }
  }
  static Future _addToDownloadQueueWithoutChecks(SyncFile syncFile) async {
    _downloadQueue.add(syncFile);
  }

  static Future _downloadFile(SyncFile file) async {
    final Uint8List encryptedDataEncoded = await _client!.webDav.download(file.remotePath);
    final String encryptedData = utf8.decode(encryptedDataEncoded);

    final Encrypter encrypter = await _client!.encrypter;
    final IV iv = IV.fromBase64(Prefs.iv.value);

    final String decryptedData = encrypter.decrypt64(encryptedData, iv: iv);

    FileManager.writeFile(file.localPath, decryptedData, alsoUpload: false);
  }

  /// Decides if the local or remote version of a file should be kept
  /// by comparing the last modified date of each file.
  static Future<bool> _shouldLocalFileBeKept(SyncFile file) async {
    // if local file doesn't exist, keep remote
    if (!await FileManager.doesFileExist(file.localPath)) {
      return false;
    }

    // get remote file
    try {
      file.webDavFile ??= (await _client!.webDav.ls(file.remotePath, props: {WebDavProps.davLastModified}))[0];
    } catch (e) {
      // remote file doesn't exist; keep local
      return true;
    }

    // file exists locally, check if it's newer
    final DateTime lastModifiedRemote = file.webDavFile!.lastModified;
    final DateTime lastModifiedLocal = await FileManager.lastModified(file.localPath);
    if (lastModifiedRemote.isAfter(lastModifiedLocal)) {
      // remote is newer; keep remote
      return false;
    } else {
      // local is newer; keep local
      return true;
    }
  }
}

class SyncFile {
  final String remotePath;
  final String localPath;
  WebDavFile? webDavFile;
  SyncFile({required this.remotePath, required this.localPath, this.webDavFile});
}
