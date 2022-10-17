/// Generated file. Do not edit.
///
/// Locales: 3
/// Strings: 189 (63 per locale)
///
/// Built on 2022-10-17 at 10:55 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	de(languageCode: 'de', build: _StringsDe.build),
	zh(languageCode: 'zh', build: _StringsZh.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(
		initLocale: LocaleSettings.instance.currentLocale,
		initTranslations: LocaleSettings.instance.currentTranslations,
	);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
	LocaleSettings._() : super(locales: AppLocale.values, baseLocale: _baseLocale, utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale) => instance.setLocale(locale);
	static AppLocale setLocaleRaw(String rawLocale) => instance.setLocaleRaw(rawLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
}

// translations

// Path: <root>
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	late final _StringsHomeEn home = _StringsHomeEn._(_root);
	late final _StringsSettingsEn settings = _StringsSettingsEn._(_root);
	late final _StringsLoginEn login = _StringsLoginEn._(_root);
	late final _StringsAppInfoEn appInfo = _StringsAppInfoEn._(_root);
	late final _StringsUpdateEn update = _StringsUpdateEn._(_root);
	late final _StringsEditorEn editor = _StringsEditorEn._(_root);
}

// Path: home
class _StringsHomeEn {
	_StringsHomeEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsHomeTabsEn tabs = _StringsHomeTabsEn._(_root);
	late final _StringsHomeTitlesEn titles = _StringsHomeTitlesEn._(_root);
	late final _StringsHomeTooltipsEn tooltips = _StringsHomeTooltipsEn._(_root);
	String get backFolder => '(Back)';
	String get welcome => 'Welcome to Saber';
	String get noFiles => 'No files found';
	String get createNewNote => 'Tap the + button to create a new note';
}

// Path: settings
class _StringsSettingsEn {
	_StringsSettingsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsSettingsPrefLabelsEn prefLabels = _StringsSettingsPrefLabelsEn._(_root);
	late final _StringsSettingsThemeModesEn themeModes = _StringsSettingsThemeModesEn._(_root);
	late final _StringsSettingsAccentColorPickerEn accentColorPicker = _StringsSettingsAccentColorPickerEn._(_root);
}

// Path: login
class _StringsLoginEn {
	_StringsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get title => 'Login';
	late final _StringsLoginFeedbacksEn feedbacks = _StringsLoginFeedbacksEn._(_root);
	late final _StringsLoginFormEn form = _StringsLoginFormEn._(_root);
	TextSpan signup({required InlineSpanBuilder linkToSignup}) => TextSpan(children: [
		const TextSpan(text: 'Don\'t have an account yet? '),
		linkToSignup('Sign up now'),
		const TextSpan(text: '!'),
	]);
	late final _StringsLoginStatusEn status = _StringsLoginStatusEn._(_root);
}

// Path: appInfo
class _StringsAppInfoEn {
	_StringsAppInfoEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get licenseNotice => 'Saber  Copyright (C) 2022  Adil Hanney\nThis program comes with absolutely no warranty. This is free software, and you are welcome to redistribute it under certain conditions.';
	String get debug => 'DEBUG';
	String get showMoreInfo => 'Show more info';
	String get showLessInfo => 'Show less info';
	String get licenseButton => 'Tap here to view more license information';
	String get privacyPolicyButton => 'Tap here to view the privacy policy';
}

// Path: update
class _StringsUpdateEn {
	_StringsUpdateEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get updateAvailable => 'Update available';
	String get updateAvailableDescription => 'A new version of the app is available.';
	String get dismiss => 'Dismiss';
	String get update => 'Update';
}

// Path: editor
class _StringsEditorEn {
	_StringsEditorEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	late final _StringsEditorToolbarEn toolbar = _StringsEditorToolbarEn._(_root);
}

// Path: home.tabs
class _StringsHomeTabsEn {
	_StringsHomeTabsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get browse => 'Browse';
	String get whiteboard => 'Whiteboard';
	String get settings => 'Settings';
}

// Path: home.titles
class _StringsHomeTitlesEn {
	_StringsHomeTitlesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get home => 'Recent notes';
	String get browse => 'All notes';
	String get whiteboard => 'Whiteboard';
	String get settings => 'Settings';
}

// Path: home.tooltips
class _StringsHomeTooltipsEn {
	_StringsHomeTooltipsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get showHideActions => 'Show/hide actions';
	String get newNote => 'New note';
	String get showUpdateDialog => 'Show update dialog';
}

// Path: settings.prefLabels
class _StringsSettingsPrefLabelsEn {
	_StringsSettingsPrefLabelsEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get appTheme => 'App theme';
	String get customAccentColor => 'Custom accent color';
	String get shouldCheckForUpdates => 'Automatically check for Saber updates';
	String get editorToolbarOnBottom => 'Align the editor toolbar to the bottom';
	String get editorAutoInvert => 'Invert notes in dark mode';
	String get preferGreyscale => 'Prefer greyscale colors';
}

// Path: settings.themeModes
class _StringsSettingsThemeModesEn {
	_StringsSettingsThemeModesEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get system => 'System';
	String get light => 'Light';
	String get dark => 'Dark';
}

// Path: settings.accentColorPicker
class _StringsSettingsAccentColorPickerEn {
	_StringsSettingsAccentColorPickerEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get pickAColor => 'Pick a color';
	String get confirm => 'Confirm';
}

// Path: login.feedbacks
class _StringsLoginFeedbacksEn {
	_StringsLoginFeedbacksEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get checkUsername => 'Please double check your username or email.';
	String get enterNcPassword => 'Please enter your Nextcloud password.';
	String get enterEncPassword => 'Please enter your encryption password.';
	String get checkUrl => 'Please enter a valid URL.';
	String get loginFailed => 'Log in failed, please check your details and network connection.';
	String get loginSuccess => 'Log in successful! Please wait while we set up...';
}

// Path: login.form
class _StringsLoginFormEn {
	_StringsLoginFormEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get useCustomServer => 'I want to use a custom Nextcloud server';
	String get customServerUrl => 'Custom server URL';
	String get username => 'Username or email';
	String get ncPassword => 'Nextcloud password';
	String get encPassword => 'Encryption password';
	TextSpan agreeToPrivacyPolicy({required InlineSpanBuilder linkToPrivacyPolicy}) => TextSpan(children: [
		const TextSpan(text: 'By logging in, you agree to the '),
		linkToPrivacyPolicy('Privacy Policy'),
		const TextSpan(text: '.'),
	]);
	String get login => 'Log in';
}

// Path: login.status
class _StringsLoginStatusEn {
	_StringsLoginStatusEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get loggedIn => 'Logged in with Nextcloud';
	String get loggedOut => 'Logged out';
	String get tapToLogin => 'Tap to log in with Nextcloud';
}

// Path: editor.toolbar
class _StringsEditorToolbarEn {
	_StringsEditorToolbarEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get fountainPen => 'Fountain pen';
	String get toggleColors => 'Toggle colors (Ctrl C)';
	String get toggleEraser => 'Toggle eraser (Ctrl E)';
	String get photo => 'Photo';
	String get toggleFingerDrawing => 'Toggle finger drawing (Ctrl F)';
	String get undo => 'Undo';
	String get redo => 'Redo';
	String get export => 'Export (Ctrl Shift S)';
	String get exportAs => 'Export as:';
}

// Path: <root>
class _StringsDe extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsDe.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsDe _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsHomeDe home = _StringsHomeDe._(_root);
	@override late final _StringsSettingsDe settings = _StringsSettingsDe._(_root);
	@override late final _StringsLoginDe login = _StringsLoginDe._(_root);
	@override late final _StringsAppInfoDe appInfo = _StringsAppInfoDe._(_root);
	@override late final _StringsUpdateDe update = _StringsUpdateDe._(_root);
	@override late final _StringsEditorDe editor = _StringsEditorDe._(_root);
}

// Path: home
class _StringsHomeDe extends _StringsHomeEn {
	_StringsHomeDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override late final _StringsHomeTabsDe tabs = _StringsHomeTabsDe._(_root);
	@override late final _StringsHomeTitlesDe titles = _StringsHomeTitlesDe._(_root);
	@override late final _StringsHomeTooltipsDe tooltips = _StringsHomeTooltipsDe._(_root);
	@override String get backFolder => '(Zurück)';
	@override String get welcome => 'Willkommen bei Saber';
	@override String get noFiles => 'Keine Dateien gefunden';
	@override String get createNewNote => 'Drücke die + Schaltfläche, um eine neue Notiz zu erstellen';
}

// Path: settings
class _StringsSettingsDe extends _StringsSettingsEn {
	_StringsSettingsDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override late final _StringsSettingsPrefLabelsDe prefLabels = _StringsSettingsPrefLabelsDe._(_root);
	@override late final _StringsSettingsThemeModesDe themeModes = _StringsSettingsThemeModesDe._(_root);
	@override late final _StringsSettingsAccentColorPickerDe accentColorPicker = _StringsSettingsAccentColorPickerDe._(_root);
}

// Path: login
class _StringsLoginDe extends _StringsLoginEn {
	_StringsLoginDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Login';
	@override late final _StringsLoginFeedbacksDe feedbacks = _StringsLoginFeedbacksDe._(_root);
	@override late final _StringsLoginFormDe form = _StringsLoginFormDe._(_root);
	@override TextSpan signup({required InlineSpanBuilder linkToSignup}) => TextSpan(children: [
		const TextSpan(text: 'Du hast noch kein Konto? '),
		linkToSignup('Erstelle jetzt eins'),
		const TextSpan(text: '!'),
	]);
	@override late final _StringsLoginStatusDe status = _StringsLoginStatusDe._(_root);
}

// Path: appInfo
class _StringsAppInfoDe extends _StringsAppInfoEn {
	_StringsAppInfoDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get licenseNotice => 'Saber  Copyright (C) 2022  Adil Hanney\nDieses Programm kommt ohne jegliche Gewährleistung. Dies ist freie Software und du bist herzlich eingeladen, diese unter bestimmten Bedingungen weiterzuverteilen.';
	@override String get debug => 'DEBUG';
	@override String get showMoreInfo => 'Mehr Infos anzeigen';
	@override String get showLessInfo => 'Weniger Infos anzeigen';
	@override String get licenseButton => 'Hier tippen, um weitere Lizenzinformationen anzuzeigen';
	@override String get privacyPolicyButton => 'Hier tippen, um die Datenschutzrichtlinie anzuzeigen';
}

// Path: update
class _StringsUpdateDe extends _StringsUpdateEn {
	_StringsUpdateDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get updateAvailable => 'Aktualisierung verfügbar';
	@override String get updateAvailableDescription => 'Eine neue Version der Anwendung ist verfügbar.';
	@override String get dismiss => 'Ausblenden';
	@override String get update => 'Aktualisieren';
}

// Path: editor
class _StringsEditorDe extends _StringsEditorEn {
	_StringsEditorDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override late final _StringsEditorToolbarDe toolbar = _StringsEditorToolbarDe._(_root);
}

// Path: home.tabs
class _StringsHomeTabsDe extends _StringsHomeTabsEn {
	_StringsHomeTabsDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get home => 'Startseite';
	@override String get browse => 'Durchsuchen';
	@override String get whiteboard => 'Whiteboard';
	@override String get settings => 'Einstellungen';
}

// Path: home.titles
class _StringsHomeTitlesDe extends _StringsHomeTitlesEn {
	_StringsHomeTitlesDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get home => 'Letzte Notizen';
	@override String get browse => 'Alle Notizen';
	@override String get whiteboard => 'Whiteboard';
	@override String get settings => 'Einstellungen';
}

// Path: home.tooltips
class _StringsHomeTooltipsDe extends _StringsHomeTooltipsEn {
	_StringsHomeTooltipsDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get showHideActions => 'Aktionen anzeigen/verstecken';
	@override String get newNote => 'Neue Notiz';
	@override String get showUpdateDialog => 'Aktualisierungsdialog anzeigen';
}

// Path: settings.prefLabels
class _StringsSettingsPrefLabelsDe extends _StringsSettingsPrefLabelsEn {
	_StringsSettingsPrefLabelsDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get appTheme => 'Anwendungsthema';
	@override String get customAccentColor => 'Benutzerdefinierte Akzentfarbe';
	@override String get shouldCheckForUpdates => 'Suche automatisch nach Saber-Aktualisierungen';
	@override String get editorToolbarOnBottom => 'Editor-Werkzeugleiste am unteren Rand ausrichten';
	@override String get editorAutoInvert => 'Notizen im Dunkelmodus invertieren';
	@override String get preferGreyscale => 'Graustufen bevorzugen';
}

// Path: settings.themeModes
class _StringsSettingsThemeModesDe extends _StringsSettingsThemeModesEn {
	_StringsSettingsThemeModesDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get system => 'System';
	@override String get light => 'Hell';
	@override String get dark => 'Dunkel';
}

// Path: settings.accentColorPicker
class _StringsSettingsAccentColorPickerDe extends _StringsSettingsAccentColorPickerEn {
	_StringsSettingsAccentColorPickerDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get pickAColor => 'Wähle eine Farbe';
	@override String get confirm => 'Bestätigen';
}

// Path: login.feedbacks
class _StringsLoginFeedbacksDe extends _StringsLoginFeedbacksEn {
	_StringsLoginFeedbacksDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get checkUsername => 'Bitte überprüfe deinen Benutzernamen oder deine E-Mail.';
	@override String get enterNcPassword => 'Bitte gib dein Nextcloud-Passwort ein.';
	@override String get enterEncPassword => 'Bitte gib dein Verschlüsselungspasswort ein.';
	@override String get checkUrl => 'Bitte gib eine gültige URL an.';
	@override String get loginFailed => 'Anmeldung fehlgeschlagen, bitte überprüfe deine Angaben und deine Netzwerkverbindung.';
	@override String get loginSuccess => 'Anmeldung erfolgreich! Bitte warte, während wir alles einrichten...';
}

// Path: login.form
class _StringsLoginFormDe extends _StringsLoginFormEn {
	_StringsLoginFormDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get useCustomServer => 'Ich möchte einen eigenen Nextcloud-Server verwenden';
	@override String get customServerUrl => 'Eigene Server-URL';
	@override String get username => 'Benutzername oder E-Mail';
	@override String get ncPassword => 'Nextcloud-Passwort';
	@override String get encPassword => 'Verschlüsselungspasswort';
	@override TextSpan agreeToPrivacyPolicy({required InlineSpanBuilder linkToPrivacyPolicy}) => TextSpan(children: [
		const TextSpan(text: 'Indem du dich anmeldest, stimmst du der '),
		linkToPrivacyPolicy('Datenschutzrichtlinie'),
		const TextSpan(text: ' zu.'),
	]);
	@override String get login => 'Anmelden';
}

// Path: login.status
class _StringsLoginStatusDe extends _StringsLoginStatusEn {
	_StringsLoginStatusDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get loggedIn => 'Mit Nextcloud angemeldet';
	@override String get loggedOut => 'Nicht angemeldet';
	@override String get tapToLogin => 'Hier tippen, um dich mit Nextcloud anzumelden';
}

// Path: editor.toolbar
class _StringsEditorToolbarDe extends _StringsEditorToolbarEn {
	_StringsEditorToolbarDe._(_StringsDe root) : this._root = root, super._(root);

	@override final _StringsDe _root; // ignore: unused_field

	// Translations
	@override String get fountainPen => 'Füllfederhalter';
	@override String get toggleColors => 'Farben umschalten (Strg + C)';
	@override String get toggleEraser => 'Radierer umschalten (Strg + E)';
	@override String get photo => 'Foto';
	@override String get toggleFingerDrawing => 'Fingerzeichnen umschalten (Strg + F)';
	@override String get undo => 'Rückgängig';
	@override String get redo => 'Wiederholen';
	@override String get export => 'Exportieren (Strg + Shift + S)';
	@override String get exportAs => 'Exportieren als:';
}

// Path: <root>
class _StringsZh extends _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsZh.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsZh _root = this; // ignore: unused_field

	// Translations
	@override late final _StringsHomeZh home = _StringsHomeZh._(_root);
	@override late final _StringsSettingsZh settings = _StringsSettingsZh._(_root);
	@override late final _StringsLoginZh login = _StringsLoginZh._(_root);
	@override late final _StringsAppInfoZh appInfo = _StringsAppInfoZh._(_root);
	@override late final _StringsUpdateZh update = _StringsUpdateZh._(_root);
	@override late final _StringsEditorZh editor = _StringsEditorZh._(_root);
}

// Path: home
class _StringsHomeZh extends _StringsHomeEn {
	_StringsHomeZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override late final _StringsHomeTabsZh tabs = _StringsHomeTabsZh._(_root);
	@override late final _StringsHomeTitlesZh titles = _StringsHomeTitlesZh._(_root);
	@override late final _StringsHomeTooltipsZh tooltips = _StringsHomeTooltipsZh._(_root);
	@override String get backFolder => '(返回)';
	@override String get welcome => '欢迎使用 Saber';
	@override String get noFiles => '未找到文件';
	@override String get createNewNote => '点击 + 按钮新建一个笔记';
}

// Path: settings
class _StringsSettingsZh extends _StringsSettingsEn {
	_StringsSettingsZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override late final _StringsSettingsPrefLabelsZh prefLabels = _StringsSettingsPrefLabelsZh._(_root);
	@override late final _StringsSettingsThemeModesZh themeModes = _StringsSettingsThemeModesZh._(_root);
	@override late final _StringsSettingsAccentColorPickerZh accentColorPicker = _StringsSettingsAccentColorPickerZh._(_root);
}

// Path: login
class _StringsLoginZh extends _StringsLoginEn {
	_StringsLoginZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get title => '登录';
	@override late final _StringsLoginFeedbacksZh feedbacks = _StringsLoginFeedbacksZh._(_root);
	@override late final _StringsLoginFormZh form = _StringsLoginFormZh._(_root);
	@override TextSpan signup({required InlineSpanBuilder linkToSignup}) => TextSpan(children: [
		const TextSpan(text: '还没有帐户？ '),
		linkToSignup('立即注册'),
		const TextSpan(text: '！'),
	]);
	@override late final _StringsLoginStatusZh status = _StringsLoginStatusZh._(_root);
}

// Path: appInfo
class _StringsAppInfoZh extends _StringsAppInfoEn {
	_StringsAppInfoZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get licenseNotice => 'Saber  版权所有 (C) 2022  Adil Hanney\nThis program comes with absolutely no warranty. This is free software, and you are welcome to redistribute it under certain conditions.';
	@override String get debug => 'DEBUG';
	@override String get showMoreInfo => '显示更多信息';
	@override String get showLessInfo => '显示更少信息';
	@override String get licenseButton => '点击此处查看更多许可证信息';
	@override String get privacyPolicyButton => '点击此处查看隐私政策';
}

// Path: update
class _StringsUpdateZh extends _StringsUpdateEn {
	_StringsUpdateZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get updateAvailable => '可用更新';
	@override String get updateAvailableDescription => '该应用程序的新版本可用。';
	@override String get dismiss => '忽略';
	@override String get update => '更新';
}

// Path: editor
class _StringsEditorZh extends _StringsEditorEn {
	_StringsEditorZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override late final _StringsEditorToolbarZh toolbar = _StringsEditorToolbarZh._(_root);
}

// Path: home.tabs
class _StringsHomeTabsZh extends _StringsHomeTabsEn {
	_StringsHomeTabsZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get home => '主页';
	@override String get browse => '全部笔记';
	@override String get whiteboard => '白板';
	@override String get settings => '设置';
}

// Path: home.titles
class _StringsHomeTitlesZh extends _StringsHomeTitlesEn {
	_StringsHomeTitlesZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get home => '最近笔记';
	@override String get browse => '全部笔记';
	@override String get whiteboard => '白板';
	@override String get settings => '设置';
}

// Path: home.tooltips
class _StringsHomeTooltipsZh extends _StringsHomeTooltipsEn {
	_StringsHomeTooltipsZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get showHideActions => '显示/隐藏操作';
	@override String get newNote => '新建笔记';
	@override String get showUpdateDialog => '显示更新对话框';
}

// Path: settings.prefLabels
class _StringsSettingsPrefLabelsZh extends _StringsSettingsPrefLabelsEn {
	_StringsSettingsPrefLabelsZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get appTheme => '应用主题';
	@override String get customAccentColor => '自定义主题色';
	@override String get shouldCheckForUpdates => '自动检查 Saber 更新';
	@override String get editorToolbarOnBottom => '将编辑工具栏与底部对齐';
	@override String get editorAutoInvert => '在深色模式下使用反色笔记背景';
	@override String get preferGreyscale => '使用灰度颜色';
}

// Path: settings.themeModes
class _StringsSettingsThemeModesZh extends _StringsSettingsThemeModesEn {
	_StringsSettingsThemeModesZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get system => '系统';
	@override String get light => '浅色';
	@override String get dark => '深色';
}

// Path: settings.accentColorPicker
class _StringsSettingsAccentColorPickerZh extends _StringsSettingsAccentColorPickerEn {
	_StringsSettingsAccentColorPickerZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get pickAColor => '选取颜色';
	@override String get confirm => '确定';
}

// Path: login.feedbacks
class _StringsLoginFeedbacksZh extends _StringsLoginFeedbacksEn {
	_StringsLoginFeedbacksZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get checkUsername => '请仔细检查您的用户名或电子邮件。';
	@override String get enterNcPassword => '请输入您的 Nextcloud 密码。';
	@override String get enterEncPassword => '请输入您的加密密码。';
	@override String get checkUrl => '请输入有效链接。';
	@override String get loginFailed => '登录失败，请检查您的详细信息和网络连接。';
	@override String get loginSuccess => '登录成功！我们正在设置中，请稍候……';
}

// Path: login.form
class _StringsLoginFormZh extends _StringsLoginFormEn {
	_StringsLoginFormZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get useCustomServer => '我想要使用自定义 Nextcloud 服务器';
	@override String get customServerUrl => '自定义服务器链接';
	@override String get username => '用户名或邮箱';
	@override String get ncPassword => 'Nextcloud 密码';
	@override String get encPassword => '加密密码';
	@override TextSpan agreeToPrivacyPolicy({required InlineSpanBuilder linkToPrivacyPolicy}) => TextSpan(children: [
		const TextSpan(text: '登录即表示您同意 '),
		linkToPrivacyPolicy('隐私政策'),
		const TextSpan(text: '。'),
	]);
	@override String get login => '登录';
}

// Path: login.status
class _StringsLoginStatusZh extends _StringsLoginStatusEn {
	_StringsLoginStatusZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get loggedIn => '已使用 Nextcloud 登录';
	@override String get loggedOut => '已注销';
	@override String get tapToLogin => '点击以使用 Nextcloud 登录';
}

// Path: editor.toolbar
class _StringsEditorToolbarZh extends _StringsEditorToolbarEn {
	_StringsEditorToolbarZh._(_StringsZh root) : this._root = root, super._(root);

	@override final _StringsZh _root; // ignore: unused_field

	// Translations
	@override String get fountainPen => '钢笔';
	@override String get toggleColors => '切换颜色 (Ctrl C)';
	@override String get toggleEraser => '切换橡皮擦 (Ctrl E)';
	@override String get photo => '照片';
	@override String get toggleFingerDrawing => '切换手写 (Ctrl F)';
	@override String get undo => '撤销';
	@override String get redo => '重做';
	@override String get export => '导出 (Ctrl Shift S)';
	@override String get exportAs => '导出为：';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'home.tabs.home': return 'Home';
			case 'home.tabs.browse': return 'Browse';
			case 'home.tabs.whiteboard': return 'Whiteboard';
			case 'home.tabs.settings': return 'Settings';
			case 'home.titles.home': return 'Recent notes';
			case 'home.titles.browse': return 'All notes';
			case 'home.titles.whiteboard': return 'Whiteboard';
			case 'home.titles.settings': return 'Settings';
			case 'home.tooltips.showHideActions': return 'Show/hide actions';
			case 'home.tooltips.newNote': return 'New note';
			case 'home.tooltips.showUpdateDialog': return 'Show update dialog';
			case 'home.backFolder': return '(Back)';
			case 'home.welcome': return 'Welcome to Saber';
			case 'home.noFiles': return 'No files found';
			case 'home.createNewNote': return 'Tap the + button to create a new note';
			case 'settings.prefLabels.appTheme': return 'App theme';
			case 'settings.prefLabels.customAccentColor': return 'Custom accent color';
			case 'settings.prefLabels.shouldCheckForUpdates': return 'Automatically check for Saber updates';
			case 'settings.prefLabels.editorToolbarOnBottom': return 'Align the editor toolbar to the bottom';
			case 'settings.prefLabels.editorAutoInvert': return 'Invert notes in dark mode';
			case 'settings.prefLabels.preferGreyscale': return 'Prefer greyscale colors';
			case 'settings.themeModes.system': return 'System';
			case 'settings.themeModes.light': return 'Light';
			case 'settings.themeModes.dark': return 'Dark';
			case 'settings.accentColorPicker.pickAColor': return 'Pick a color';
			case 'settings.accentColorPicker.confirm': return 'Confirm';
			case 'login.title': return 'Login';
			case 'login.feedbacks.checkUsername': return 'Please double check your username or email.';
			case 'login.feedbacks.enterNcPassword': return 'Please enter your Nextcloud password.';
			case 'login.feedbacks.enterEncPassword': return 'Please enter your encryption password.';
			case 'login.feedbacks.checkUrl': return 'Please enter a valid URL.';
			case 'login.feedbacks.loginFailed': return 'Log in failed, please check your details and network connection.';
			case 'login.feedbacks.loginSuccess': return 'Log in successful! Please wait while we set up...';
			case 'login.form.useCustomServer': return 'I want to use a custom Nextcloud server';
			case 'login.form.customServerUrl': return 'Custom server URL';
			case 'login.form.username': return 'Username or email';
			case 'login.form.ncPassword': return 'Nextcloud password';
			case 'login.form.encPassword': return 'Encryption password';
			case 'login.form.agreeToPrivacyPolicy': return ({required InlineSpanBuilder linkToPrivacyPolicy}) => TextSpan(children: [
				const TextSpan(text: 'By logging in, you agree to the '),
				linkToPrivacyPolicy('Privacy Policy'),
				const TextSpan(text: '.'),
			]);
			case 'login.form.login': return 'Log in';
			case 'login.signup': return ({required InlineSpanBuilder linkToSignup}) => TextSpan(children: [
				const TextSpan(text: 'Don\'t have an account yet? '),
				linkToSignup('Sign up now'),
				const TextSpan(text: '!'),
			]);
			case 'login.status.loggedIn': return 'Logged in with Nextcloud';
			case 'login.status.loggedOut': return 'Logged out';
			case 'login.status.tapToLogin': return 'Tap to log in with Nextcloud';
			case 'appInfo.licenseNotice': return 'Saber  Copyright (C) 2022  Adil Hanney\nThis program comes with absolutely no warranty. This is free software, and you are welcome to redistribute it under certain conditions.';
			case 'appInfo.debug': return 'DEBUG';
			case 'appInfo.showMoreInfo': return 'Show more info';
			case 'appInfo.showLessInfo': return 'Show less info';
			case 'appInfo.licenseButton': return 'Tap here to view more license information';
			case 'appInfo.privacyPolicyButton': return 'Tap here to view the privacy policy';
			case 'update.updateAvailable': return 'Update available';
			case 'update.updateAvailableDescription': return 'A new version of the app is available.';
			case 'update.dismiss': return 'Dismiss';
			case 'update.update': return 'Update';
			case 'editor.toolbar.fountainPen': return 'Fountain pen';
			case 'editor.toolbar.toggleColors': return 'Toggle colors (Ctrl C)';
			case 'editor.toolbar.toggleEraser': return 'Toggle eraser (Ctrl E)';
			case 'editor.toolbar.photo': return 'Photo';
			case 'editor.toolbar.toggleFingerDrawing': return 'Toggle finger drawing (Ctrl F)';
			case 'editor.toolbar.undo': return 'Undo';
			case 'editor.toolbar.redo': return 'Redo';
			case 'editor.toolbar.export': return 'Export (Ctrl Shift S)';
			case 'editor.toolbar.exportAs': return 'Export as:';
			default: return null;
		}
	}
}

extension on _StringsDe {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'home.tabs.home': return 'Startseite';
			case 'home.tabs.browse': return 'Durchsuchen';
			case 'home.tabs.whiteboard': return 'Whiteboard';
			case 'home.tabs.settings': return 'Einstellungen';
			case 'home.titles.home': return 'Letzte Notizen';
			case 'home.titles.browse': return 'Alle Notizen';
			case 'home.titles.whiteboard': return 'Whiteboard';
			case 'home.titles.settings': return 'Einstellungen';
			case 'home.tooltips.showHideActions': return 'Aktionen anzeigen/verstecken';
			case 'home.tooltips.newNote': return 'Neue Notiz';
			case 'home.tooltips.showUpdateDialog': return 'Aktualisierungsdialog anzeigen';
			case 'home.backFolder': return '(Zurück)';
			case 'home.welcome': return 'Willkommen bei Saber';
			case 'home.noFiles': return 'Keine Dateien gefunden';
			case 'home.createNewNote': return 'Drücke die + Schaltfläche, um eine neue Notiz zu erstellen';
			case 'settings.prefLabels.appTheme': return 'Anwendungsthema';
			case 'settings.prefLabels.customAccentColor': return 'Benutzerdefinierte Akzentfarbe';
			case 'settings.prefLabels.shouldCheckForUpdates': return 'Suche automatisch nach Saber-Aktualisierungen';
			case 'settings.prefLabels.editorToolbarOnBottom': return 'Editor-Werkzeugleiste am unteren Rand ausrichten';
			case 'settings.prefLabels.editorAutoInvert': return 'Notizen im Dunkelmodus invertieren';
			case 'settings.prefLabels.preferGreyscale': return 'Graustufen bevorzugen';
			case 'settings.themeModes.system': return 'System';
			case 'settings.themeModes.light': return 'Hell';
			case 'settings.themeModes.dark': return 'Dunkel';
			case 'settings.accentColorPicker.pickAColor': return 'Wähle eine Farbe';
			case 'settings.accentColorPicker.confirm': return 'Bestätigen';
			case 'login.title': return 'Login';
			case 'login.feedbacks.checkUsername': return 'Bitte überprüfe deinen Benutzernamen oder deine E-Mail.';
			case 'login.feedbacks.enterNcPassword': return 'Bitte gib dein Nextcloud-Passwort ein.';
			case 'login.feedbacks.enterEncPassword': return 'Bitte gib dein Verschlüsselungspasswort ein.';
			case 'login.feedbacks.checkUrl': return 'Bitte gib eine gültige URL an.';
			case 'login.feedbacks.loginFailed': return 'Anmeldung fehlgeschlagen, bitte überprüfe deine Angaben und deine Netzwerkverbindung.';
			case 'login.feedbacks.loginSuccess': return 'Anmeldung erfolgreich! Bitte warte, während wir alles einrichten...';
			case 'login.form.useCustomServer': return 'Ich möchte einen eigenen Nextcloud-Server verwenden';
			case 'login.form.customServerUrl': return 'Eigene Server-URL';
			case 'login.form.username': return 'Benutzername oder E-Mail';
			case 'login.form.ncPassword': return 'Nextcloud-Passwort';
			case 'login.form.encPassword': return 'Verschlüsselungspasswort';
			case 'login.form.agreeToPrivacyPolicy': return ({required InlineSpanBuilder linkToPrivacyPolicy}) => TextSpan(children: [
				const TextSpan(text: 'Indem du dich anmeldest, stimmst du der '),
				linkToPrivacyPolicy('Datenschutzrichtlinie'),
				const TextSpan(text: ' zu.'),
			]);
			case 'login.form.login': return 'Anmelden';
			case 'login.signup': return ({required InlineSpanBuilder linkToSignup}) => TextSpan(children: [
				const TextSpan(text: 'Du hast noch kein Konto? '),
				linkToSignup('Erstelle jetzt eins'),
				const TextSpan(text: '!'),
			]);
			case 'login.status.loggedIn': return 'Mit Nextcloud angemeldet';
			case 'login.status.loggedOut': return 'Nicht angemeldet';
			case 'login.status.tapToLogin': return 'Hier tippen, um dich mit Nextcloud anzumelden';
			case 'appInfo.licenseNotice': return 'Saber  Copyright (C) 2022  Adil Hanney\nDieses Programm kommt ohne jegliche Gewährleistung. Dies ist freie Software und du bist herzlich eingeladen, diese unter bestimmten Bedingungen weiterzuverteilen.';
			case 'appInfo.debug': return 'DEBUG';
			case 'appInfo.showMoreInfo': return 'Mehr Infos anzeigen';
			case 'appInfo.showLessInfo': return 'Weniger Infos anzeigen';
			case 'appInfo.licenseButton': return 'Hier tippen, um weitere Lizenzinformationen anzuzeigen';
			case 'appInfo.privacyPolicyButton': return 'Hier tippen, um die Datenschutzrichtlinie anzuzeigen';
			case 'update.updateAvailable': return 'Aktualisierung verfügbar';
			case 'update.updateAvailableDescription': return 'Eine neue Version der Anwendung ist verfügbar.';
			case 'update.dismiss': return 'Ausblenden';
			case 'update.update': return 'Aktualisieren';
			case 'editor.toolbar.fountainPen': return 'Füllfederhalter';
			case 'editor.toolbar.toggleColors': return 'Farben umschalten (Strg + C)';
			case 'editor.toolbar.toggleEraser': return 'Radierer umschalten (Strg + E)';
			case 'editor.toolbar.photo': return 'Foto';
			case 'editor.toolbar.toggleFingerDrawing': return 'Fingerzeichnen umschalten (Strg + F)';
			case 'editor.toolbar.undo': return 'Rückgängig';
			case 'editor.toolbar.redo': return 'Wiederholen';
			case 'editor.toolbar.export': return 'Exportieren (Strg + Shift + S)';
			case 'editor.toolbar.exportAs': return 'Exportieren als:';
			default: return null;
		}
	}
}

extension on _StringsZh {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'home.tabs.home': return '主页';
			case 'home.tabs.browse': return '全部笔记';
			case 'home.tabs.whiteboard': return '白板';
			case 'home.tabs.settings': return '设置';
			case 'home.titles.home': return '最近笔记';
			case 'home.titles.browse': return '全部笔记';
			case 'home.titles.whiteboard': return '白板';
			case 'home.titles.settings': return '设置';
			case 'home.tooltips.showHideActions': return '显示/隐藏操作';
			case 'home.tooltips.newNote': return '新建笔记';
			case 'home.tooltips.showUpdateDialog': return '显示更新对话框';
			case 'home.backFolder': return '(返回)';
			case 'home.welcome': return '欢迎使用 Saber';
			case 'home.noFiles': return '未找到文件';
			case 'home.createNewNote': return '点击 + 按钮新建一个笔记';
			case 'settings.prefLabels.appTheme': return '应用主题';
			case 'settings.prefLabels.customAccentColor': return '自定义主题色';
			case 'settings.prefLabels.shouldCheckForUpdates': return '自动检查 Saber 更新';
			case 'settings.prefLabels.editorToolbarOnBottom': return '将编辑工具栏与底部对齐';
			case 'settings.prefLabels.editorAutoInvert': return '在深色模式下使用反色笔记背景';
			case 'settings.prefLabels.preferGreyscale': return '使用灰度颜色';
			case 'settings.themeModes.system': return '系统';
			case 'settings.themeModes.light': return '浅色';
			case 'settings.themeModes.dark': return '深色';
			case 'settings.accentColorPicker.pickAColor': return '选取颜色';
			case 'settings.accentColorPicker.confirm': return '确定';
			case 'login.title': return '登录';
			case 'login.feedbacks.checkUsername': return '请仔细检查您的用户名或电子邮件。';
			case 'login.feedbacks.enterNcPassword': return '请输入您的 Nextcloud 密码。';
			case 'login.feedbacks.enterEncPassword': return '请输入您的加密密码。';
			case 'login.feedbacks.checkUrl': return '请输入有效链接。';
			case 'login.feedbacks.loginFailed': return '登录失败，请检查您的详细信息和网络连接。';
			case 'login.feedbacks.loginSuccess': return '登录成功！我们正在设置中，请稍候……';
			case 'login.form.useCustomServer': return '我想要使用自定义 Nextcloud 服务器';
			case 'login.form.customServerUrl': return '自定义服务器链接';
			case 'login.form.username': return '用户名或邮箱';
			case 'login.form.ncPassword': return 'Nextcloud 密码';
			case 'login.form.encPassword': return '加密密码';
			case 'login.form.agreeToPrivacyPolicy': return ({required InlineSpanBuilder linkToPrivacyPolicy}) => TextSpan(children: [
				const TextSpan(text: '登录即表示您同意 '),
				linkToPrivacyPolicy('隐私政策'),
				const TextSpan(text: '。'),
			]);
			case 'login.form.login': return '登录';
			case 'login.signup': return ({required InlineSpanBuilder linkToSignup}) => TextSpan(children: [
				const TextSpan(text: '还没有帐户？ '),
				linkToSignup('立即注册'),
				const TextSpan(text: '！'),
			]);
			case 'login.status.loggedIn': return '已使用 Nextcloud 登录';
			case 'login.status.loggedOut': return '已注销';
			case 'login.status.tapToLogin': return '点击以使用 Nextcloud 登录';
			case 'appInfo.licenseNotice': return 'Saber  版权所有 (C) 2022  Adil Hanney\nThis program comes with absolutely no warranty. This is free software, and you are welcome to redistribute it under certain conditions.';
			case 'appInfo.debug': return 'DEBUG';
			case 'appInfo.showMoreInfo': return '显示更多信息';
			case 'appInfo.showLessInfo': return '显示更少信息';
			case 'appInfo.licenseButton': return '点击此处查看更多许可证信息';
			case 'appInfo.privacyPolicyButton': return '点击此处查看隐私政策';
			case 'update.updateAvailable': return '可用更新';
			case 'update.updateAvailableDescription': return '该应用程序的新版本可用。';
			case 'update.dismiss': return '忽略';
			case 'update.update': return '更新';
			case 'editor.toolbar.fountainPen': return '钢笔';
			case 'editor.toolbar.toggleColors': return '切换颜色 (Ctrl C)';
			case 'editor.toolbar.toggleEraser': return '切换橡皮擦 (Ctrl E)';
			case 'editor.toolbar.photo': return '照片';
			case 'editor.toolbar.toggleFingerDrawing': return '切换手写 (Ctrl F)';
			case 'editor.toolbar.undo': return '撤销';
			case 'editor.toolbar.redo': return '重做';
			case 'editor.toolbar.export': return '导出 (Ctrl Shift S)';
			case 'editor.toolbar.exportAs': return '导出为：';
			default: return null;
		}
	}
}
