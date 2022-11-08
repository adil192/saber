
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nextcloud/nextcloud.dart';
import 'package:saber/components/nextcloud/login_group.dart';
import 'package:saber/data/nextcloud/nextcloud_client_extension.dart';
import 'package:saber/data/prefs.dart';
import 'package:saber/i18n/strings.g.dart';
import 'package:url_launcher/url_launcher.dart';

class NcLoginPage extends StatefulWidget {
  const NcLoginPage({super.key});

  static final Uri signupUrl = Uri.parse("https://nc.saber.adil.hanney.org/index.php/apps/registration/");

  @override
  State<NcLoginPage> createState() => _NcLoginPageState();
}

class _NcLoginPageState extends State<NcLoginPage> {
  Future<bool> _tryLogin(LoginDetailsStruct loginDetails) async {
    final NextcloudClient client = NextcloudClient(
      loginDetails.url,
      username: loginDetails.username,
      password: loginDetails.ncPassword,
    );

    try {
      await client.webdav.status();
    } catch (e) {
      return false;
    }

    _finishLogin(loginDetails, client); // don't await

    return true;
  }

  Future _finishLogin(LoginDetailsStruct loginDetails, NextcloudClient client) async {
    // encrypted prefs
    Prefs.url.value = loginDetails.url.toString();
    Prefs.username.value = loginDetails.username;
    Prefs.ncPassword.value = loginDetails.ncPassword;
    Prefs.encPassword.value = loginDetails.encPassword;

    Prefs.pfp.value = ""; // trigger listeners while awaiting
    Uint8List avatar = await client.core.getAvatar(userId: loginDetails.username, size: 512);
    Prefs.pfp.value = base64Encode(avatar);

    await client.loadEncryptionKey();

    if (mounted) context.pop();
  }

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight,
        title: Text(t.login.title),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: 350,
            child: Column(
              children: [
                const SizedBox(height: 16),
                Hero(
                  tag: Prefs.pfp.key,
                  child: SvgPicture.asset(
                    "assets/images/undraw_cloud_sync_re_02p1.svg",
                    width: 350,
                    excludeFromSemantics: true,
                  ),
                ),

                const SizedBox(height: 64),
                LoginInputGroup(
                  tryLogin: _tryLogin,
                ),
                const SizedBox(height: 64),

                Text.rich(
                  t.login.signup(
                    linkToSignup: (text) => TextSpan(
                      text: text,
                      style: TextStyle(color: colorScheme.primary),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        launchUrl(
                          NcLoginPage.signupUrl,
                          mode: LaunchMode.externalApplication,
                        );
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
