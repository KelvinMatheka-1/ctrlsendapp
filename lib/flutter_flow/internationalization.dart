import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es', 'de', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? deText = '',
    String? arText = '',
  }) =>
      [enText, esText, deText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // loginPage
  {
    'o07j3mgv': {
      'en': 'Welcome!',
      'ar': 'البدء',
      'de': 'Loslegen',
      'es': 'Empezar',
    },
    'fzxvw3mu': {
      'en': 'Login to access your account below.',
      'ar': 'قم بإنشاء حسابك أدناه.',
      'de': 'Erstellen Sie unten Ihr Konto.',
      'es': 'Crea tu cuenta a continuación.',
    },
    'a9j78va9': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'i7f18cve': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'wztjmbn8': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'de': 'Passwort',
      'es': 'Contraseña',
    },
    'lw1jpm1f': {
      'en': 'Enter your password...',
      'ar': 'ادخل رقمك السري...',
      'de': 'Geben Sie Ihr Passwort ein...',
      'es': 'Ingresa tu contraseña...',
    },
    'm2xyjvuf': {
      'en': 'Forgot Password?',
      'ar': 'هل نسيت كلمة السر؟',
      'de': 'Passwort vergessen?',
      'es': '¿Has olvidado tu contraseña?',
    },
    'qbmoi1av': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
      'de': 'Anmeldung',
      'es': 'Acceso',
    },
    'cjqb8ial': {
      'en': 'Don\'t have an account?',
      'ar': 'ليس لديك حساب؟',
      'de': 'Sie haben kein Konto?',
      'es': '¿No tienes una cuenta?',
    },
    'a0iimirx': {
      'en': 'Create',
      'ar': 'ليس لديك حساب؟',
      'de': 'Sie haben kein Konto?',
      'es': '¿No tienes una cuenta?',
    },
    '2bb3vct7': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // registerAccount
  {
    'gpokmd81': {
      'en': 'Get Started',
      'ar': 'البدء',
      'de': 'Loslegen',
      'es': 'Empezar',
    },
    'oitrrwgg': {
      'en': 'Create your account below.',
      'ar': 'قم بإنشاء حسابك أدناه.',
      'de': 'Erstellen Sie unten Ihr Konto.',
      'es': 'Crea tu cuenta a continuación.',
    },
    'gcwdqm4g': {
      'en': 'full names',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'iam0xgwx': {
      'en': 'Enter your name...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    '97klqr4f': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'jvjqwpho': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'bqv15dcf': {
      'en': 'Password',
      'ar': 'كلمة المرور',
      'de': 'Passwort',
      'es': 'Contraseña',
    },
    'joih97mn': {
      'en': 'Enter your password...',
      'ar': 'ادخل رقمك السري...',
      'de': 'Geben Sie Ihr Passwort ein...',
      'es': 'Ingresa tu contraseña...',
    },
    'rzpiwq9p': {
      'en': 'Confirm Password',
      'ar': 'تأكيد كلمة المرور',
      'de': 'Kennwort bestätigen',
      'es': 'Confirmar contraseña',
    },
    'eyfkffka': {
      'en': 'Enter your password...',
      'ar': 'ادخل رقمك السري...',
      'de': 'Geben Sie Ihr Passwort ein...',
      'es': 'Ingresa tu contraseña...',
    },
    '5kmjfwsk': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
      'de': 'Benutzerkonto erstellen',
      'es': 'Crear una cuenta',
    },
    '3twynvfz': {
      'en': 'Login',
      'ar': 'هل لديك حساب؟',
      'de': 'Sie haben bereits ein Konto?',
      'es': '¿Ya tienes una cuenta?',
    },
    '9ssznj0g': {
      'en': 'Already have an account?',
      'ar': 'هل لديك حساب؟',
      'de': 'Sie haben bereits ein Konto?',
      'es': '¿Ya tienes una cuenta?',
    },
    'momge5oj': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // forgotPassword
  {
    'g416xg9f': {
      'en': 'Forgot Password',
      'ar': 'هل نسيت كلمة السر',
      'de': 'Passwort vergessen',
      'es': 'Has olvidado tu contraseña',
    },
    'xaiad71o': {
      'en':
          'Enter the email associated with your account and we will send you a verification code.',
      'ar': 'أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل لك رمز التحقق.',
      'de':
          'Geben Sie die mit Ihrem Konto verknüpfte E-Mail-Adresse ein und wir senden Ihnen einen Bestätigungscode.',
      'es':
          'Introduce el correo electrónico asociado a tu cuenta y te enviaremos un código de verificación.',
    },
    'u4nuk910': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    '37kotxi0': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'hiwpaze1': {
      'en': 'Send Reset Link',
      'ar': 'أرسل رابط إعادة التعيين',
      'de': 'Zurücksetzen-Link senden',
      'es': 'Enviar enlace de reinicio',
    },
    '598b8d3m': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // onboarding
  {
    'i8hl2uua': {
      'en': 'Add User To Wallet',
      'ar': 'إنشاء الميزانيات',
      'de': 'Erstellen Sie Budgets',
      'es': 'Crear presupuestos',
    },
    'hxtwax0y': {
      'en':
          'Now with  the ability to control how your money is spent after,  by adding someone to your wallet',
      'ar':
          'قم بإنشاء ميزانيات يمكنك ربط المعاملات بها أيضًا من أجل التتبع السهل.',
      'de':
          'Erstellen Sie Budgets, mit denen Sie auch Transaktionen verknüpfen können, um sie einfach nachverfolgen zu können.',
      'es':
          'Cree presupuestos en los que también pueda vincular transacciones para facilitar el seguimiento.',
    },
    'mjy3ljln': {
      'en': 'Approve or Suspend Transactions',
      'ar': 'تتبع الإنفاق',
      'de': 'Behalten Sie die Ausgaben im Auge',
      'es': 'Mantenga un registro de los gastos',
    },
    'uf9k1spp': {
      'en': 'Suspecting suspicious activity? Just tap Reject',
      'ar': 'أضف المعاملات بسهولة وربطها بالميزانيات التي تم إنشاؤها.',
      'de':
          'Fügen Sie ganz einfach Transaktionen hinzu und verknüpfen Sie sie mit erstellten Budgets.',
      'es':
          'Agregue fácilmente transacciones y asócielas con los presupuestos que se han creado.',
    },
    '9c4outzf': {
      'en': 'Get Real-time Information',
      'ar': 'تحليل الميزانية',
      'de': 'Budgetanalyse',
      'es': 'Análisis de presupuesto',
    },
    'q30ina4f': {
      'en':
          'Ability to see what or who your money is being spent on. Now that\'s transparency!',
      'ar': 'تعرف على مكان ميزانياتك وكيف يمكن تعديلها.',
      'de': 'Wissen, wo Ihre Budgets sind und wie sie angepasst werden können.',
      'es': 'Sepa dónde están sus presupuestos y cómo se pueden ajustar.',
    },
    'ypt7b97g': {
      'en': 'Start Now',
      'ar': 'إنشاء ميزانيتك',
      'de': 'Erstellen Sie Ihr Budget',
      'es': 'Crea tu presupuesto',
    },
    'oo0kk9qe': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // MY_profilePage
  {
    'i16gr6pz': {
      'en': 'Account',
      'ar': '',
      'de': '',
      'es': '',
    },
    'eixjjzil': {
      'en': 'Hello there',
      'ar': '',
      'de': '',
      'es': '',
    },
    'jcx5no7y': {
      'en': 'manage your account settings',
      'ar': '',
      'de': '',
      'es': '',
    },
    '03k0vw86': {
      'en': 'Change Password',
      'ar': 'تغيير كلمة المرور',
      'de': 'Kennwort ändern',
      'es': 'Cambia la contraseña',
    },
    '6w6wv95p': {
      'en': 'Notification Settings',
      'ar': 'إعدادات الإشعار',
      'de': 'Benachrichtigungseinstellungen',
      'es': 'Configuración de las notificaciones',
    },
    'sxl44uxw': {
      'en': 'Onboarding',
      'ar': 'إعدادات الإشعار',
      'de': 'Benachrichtigungseinstellungen',
      'es': 'Configuración de las notificaciones',
    },
    '2ll42t1u': {
      'en': 'Dark Mode',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8d386226': {
      'en': 'Light Mode',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8srr2k0j': {
      'en': '___',
      'ar': '•',
      'de': '•',
      'es': '•',
    },
  },
  // transferComplete
  {
    'xf8d4sm8': {
      'en': 'Transfer Complete',
      'ar': 'نقل كامل',
      'de': 'Übertragung vollständig',
      'es': 'transferencia completa',
    },
    'iq9jjji8': {
      'en': 'successfully transferred funds.  ',
      'ar':
          'عمل رائع ، لقد قمت بتحويل الأموال بنجاح. قد يستغرق خروج الأموال من حسابك بضعة أيام.',
      'de':
          'Großartige Arbeit, Sie haben erfolgreich Geld überwiesen. Es kann einige Tage dauern, bis das Geld von Ihrem Konto abgebucht wird.',
      'es':
          'Buen trabajo, transfirió fondos con éxito. Los fondos pueden tardar unos días en salir de su cuenta.',
    },
    'wrbg19ed': {
      'en': 'Okay',
      'ar': 'تمام',
      'de': 'Okay',
      'es': 'Okey',
    },
    'ndkybnrt': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // changePassword
  {
    'l5iggwaz': {
      'en': 'Change Password',
      'ar': 'تغيير كلمة المرور',
      'de': 'Kennwort ändern',
      'es': 'Cambia la contraseña',
    },
    '2b97u8y5': {
      'en':
          'Enter the email associated with your account and we will send you link to reset your password.',
      'ar':
          'أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل لك رابطًا لإعادة تعيين كلمة المرور الخاصة بك.',
      'de':
          'Geben Sie die mit Ihrem Konto verknüpfte E-Mail-Adresse ein und wir senden Ihnen einen Link zum Zurücksetzen Ihres Passworts.',
      'es':
          'Ingrese el correo electrónico asociado con su cuenta y le enviaremos un enlace para restablecer su contraseña.',
    },
    'ajy1c3r9': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
      'de': 'E-Mail-Addresse',
      'es': 'Dirección de correo electrónico',
    },
    'hsqfoxya': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
      'de': 'Geben sie ihre E-Mail Adresse ein...',
      'es': 'Introduce tu correo electrónico...',
    },
    'if4pz6lm': {
      'en': 'Send Reset Link',
      'ar': 'أرسل رابط إعادة التعيين',
      'de': 'Zurücksetzen-Link senden',
      'es': 'Enviar enlace de reinicio',
    },
    '5tvk9lv0': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // notificationsSettings
  {
    'sc4ff4ce': {
      'en': 'Notifications',
      'ar': 'إشعارات',
      'de': 'Benachrichtigungen',
      'es': 'Notificaciones',
    },
    'r72zvrv5': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'ar': 'اختر الإشعارات التي تريد تلقيها أدناه وسنقوم بتحديث الإعدادات.',
      'de':
          'Wählen Sie unten aus, welche Benachrichtigungen Sie erhalten möchten, und wir aktualisieren die Einstellungen.',
      'es':
          'Elija qué notificaciones desea recibir a continuación y actualizaremos la configuración.',
    },
    'gjygkr0n': {
      'en': 'Push Notifications',
      'ar': 'دفع الإخطارات',
      'de': 'Mitteilungen',
      'es': 'Notificaciones push',
    },
    '3y3yhxbk': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'ar': 'تلقي إشعارات من تطبيقنا على أساس شبه منتظم.',
      'de':
          'Erhalten Sie regelmäßig Push-Benachrichtigungen von unserer Anwendung.',
      'es':
          'Reciba notificaciones Push de nuestra aplicación de forma semi regular.',
    },
    '1ytebj35': {
      'en': 'Email Notifications',
      'ar': 'اشعارات البريد الالكتروني',
      'de': 'E-Mail Benachrichtigungen',
      'es': 'Notificaciónes de Correo Electrónico',
    },
    '9lvh5nst': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'ar':
          'تلقي إشعارات البريد الإلكتروني من فريق التسويق لدينا حول الميزات الجديدة.',
      'de':
          'Erhalten Sie E-Mail-Benachrichtigungen von unserem Marketingteam über neue Funktionen.',
      'es':
          'Reciba notificaciones por correo electrónico de nuestro equipo de marketing sobre nuevas funciones.',
    },
    '69d2j74u': {
      'en': 'Location Services',
      'ar': 'خدمات الموقع',
      'de': 'Standortdienste',
      'es': 'Servicios de localización',
    },
    '3k8cuv0d': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'ar':
          'اسمح لنا بتتبع موقعك ، فهذا يساعد على تتبع الإنفاق ويحافظ على سلامتك.',
      'de':
          'Erlauben Sie uns, Ihren Standort zu verfolgen, dies hilft, die Ausgaben im Auge zu behalten und schützt Sie.',
      'es':
          'Permítanos rastrear su ubicación, esto ayuda a realizar un seguimiento de los gastos y lo mantiene seguro.',
    },
    'isgrgbfs': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
      'de': 'Änderungen speichern',
      'es': 'Guardar cambios',
    },
    'a96mlyeh': {
      'en': '',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // tutorial_PROFILE
  {
    '38wb3rix': {
      'en': 'Tutorial',
      'ar': 'درس تعليمي',
      'de': 'Lernprogramm',
      'es': 'Tutorial',
    },
    'o6prpb1q': {
      'en': 'Create Budgets',
      'ar': 'إنشاء الميزانيات',
      'de': 'Erstellen Sie Budgets',
      'es': 'Crear presupuestos',
    },
    '292pbdw7': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'ar':
          'قم بإنشاء ميزانيات يمكنك ربط المعاملات بها أيضًا من أجل التتبع السهل.',
      'de':
          'Erstellen Sie Budgets, mit denen Sie auch Transaktionen verknüpfen können, um sie einfach nachverfolgen zu können.',
      'es':
          'Cree presupuestos en los que también pueda vincular transacciones para facilitar el seguimiento.',
    },
    'b10xvuf9': {
      'en': 'Keep Track of Spending',
      'ar': 'تتبع الإنفاق',
      'de': 'Behalten Sie die Ausgaben im Auge',
      'es': 'Mantenga un registro de los gastos',
    },
    't6k1smsm': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'ar': 'أضف المعاملات بسهولة وربطها بالميزانيات التي تم إنشاؤها.',
      'de':
          'Fügen Sie ganz einfach Transaktionen hinzu und verknüpfen Sie sie mit erstellten Budgets.',
      'es':
          'Agregue fácilmente transacciones y asócielas con los presupuestos que se han creado.',
    },
    'u8xxj427': {
      'en': 'Budget Analysis',
      'ar': 'تحليل الميزانية',
      'de': 'Budgetanalyse',
      'es': 'Análisis de presupuesto',
    },
    'iqi0pkmb': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'ar': 'تعرف على مكان ميزانياتك وكيف يمكن تعديلها.',
      'de': 'Wissen, wo Ihre Budgets sind und wie sie angepasst werden können.',
      'es': 'Sepa dónde están sus presupuestos y cómo se pueden ajustar.',
    },
    'uydm0fnm': {
      'en': 'Home',
      'ar': 'مسكن',
      'de': 'Heim',
      'es': 'Casa',
    },
  },
  // MY_CardCopy
  {
    'qzoegch8': {
      'en': 'Welcome back',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dymv4yfi': {
      'en': 'Available balance ',
      'ar': '**** 0149',
      'de': '**** 0149',
      'es': '**** 0149',
    },
    'hq6h8n8z': {
      'en': 'Give Acess',
      'ar': 'تحويل',
      'de': 'Transfer',
      'es': 'Transferir',
    },
    'x97svci5': {
      'en': 'Making Payments',
      'ar': 'تحويل',
      'de': 'Transfer',
      'es': 'Transferir',
    },
    'c2jxsc5i': {
      'en': 'Wallets Accessable',
      'ar': 'تحويل',
      'de': 'Transfer',
      'es': 'Transferir',
    },
    'ek53o9dn': {
      'en': 'Send Money',
      'ar': 'تحويل',
      'de': 'Transfer',
      'es': 'Transferir',
    },
    'sim4ect5': {
      'en': 'Transactions',
      'ar': 'تحويل',
      'de': 'Transfer',
      'es': 'Transferir',
    },
    'v1qdli2a': {
      'en': 'Beta Feature',
      'ar': 'تحويل',
      'de': 'Transfer',
      'es': 'Transferir',
    },
    'u8nuv2z1': {
      'en': '___',
      'ar': '•',
      'de': '•',
      'es': '•',
    },
  },
  // selectwallet
  {
    'xpkiiyv8': {
      'en': 'Total usable from wallets',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nouedum2': {
      'en': 'ksh1234',
      'ar': '',
      'de': '',
      'es': '',
    },
    'np83u3bs': {
      'en': 'Allowed:',
      'ar': '',
      'de': '',
      'es': '',
    },
    '97kh0zns': {
      'en': 'Allowed:',
      'ar': '',
      'de': '',
      'es': '',
    },
    'oijp92mn': {
      'en': 'Approved transactions',
      'ar': '',
      'de': '',
      'es': '',
    },
    'fpa6lub9': {
      'en': 'You sent ',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ugs0gfn4': {
      'en': 'to',
      'ar': '',
      'de': '',
      'es': '',
    },
    'tzo2a0ft': {
      'en': 'from',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ielvrzmg': {
      'en': '\'s',
      'ar': '',
      'de': '',
      'es': '',
    },
    'o2flgi1i': {
      'en': 'wallet.',
      'ar': '',
      'de': '',
      'es': '',
    },
    'oww69n1t': {
      'en': 'Wallets',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bb3lphy2': {
      'en': '___',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // transactions
  {
    '2u3nqbyc': {
      'en': 'Sent',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nxoec5nz': {
      'en': 'Funds sent',
      'ar': '',
      'de': '',
      'es': '',
    },
    'n314hcg5': {
      'en': 'You sent ',
      'ar': '',
      'de': '',
      'es': '',
    },
    '2fdjakof': {
      'en': 'to',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zwe3xrfj': {
      'en': 'Recieved',
      'ar': '',
      'de': '',
      'es': '',
    },
    'vb2jsq9i': {
      'en': 'Funds recieved',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9mfgpqij': {
      'en': 'recieved from',
      'ar': '',
      'de': '',
      'es': '',
    },
    'pd9lehgh': {
      'en': 'Approve',
      'ar': '',
      'de': '',
      'es': '',
    },
    'g39venlo': {
      'en': 'Approve a transactions',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5h7f3aw8': {
      'en': 'is sending',
      'ar': '',
      'de': '',
      'es': '',
    },
    'tcn5au8b': {
      'en': 'to',
      'ar': '',
      'de': '',
      'es': '',
    },
    'q1relwax': {
      'en': 'from',
      'ar': '',
      'de': '',
      'es': '',
    },
    'voicutcj': {
      'en': 'your wallet',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zjibghg4': {
      'en': 'Approve',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zy28ivdr': {
      'en': 'Reject',
      'ar': '',
      'de': '',
      'es': '',
    },
    'uj5891ig': {
      'en': 'Approved/rejected',
      'ar': '',
      'de': '',
      'es': '',
    },
    '66lrsk6g': {
      'en': 'Approved transactions',
      'ar': '',
      'de': '',
      'es': '',
    },
    '2jd18hoh': {
      'en': 'sent',
      'ar': '',
      'de': '',
      'es': '',
    },
    'pd69fphh': {
      'en': 'to',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ghqf2xlh': {
      'en': 'from',
      'ar': '',
      'de': '',
      'es': '',
    },
    'x7vqfz9l': {
      'en': 'your wallet',
      'ar': '',
      'de': '',
      'es': '',
    },
    'tzs4s9v8': {
      'en': 'Approved',
      'ar': '',
      'de': '',
      'es': '',
    },
    'z61ijbuj': {
      'en': 'Transactions',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9xv1v0qw': {
      'en': 'Shop',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // List08ProductList
  {
    '75yxfqts': {
      'en': 'Order Now',
      'ar': '',
      'de': '',
      'es': '',
    },
    'g7v5z3re': {
      'en': 'Our menu is below',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bm5n0qmj': {
      'en': 'Amount Allowed',
      'ar': '',
      'de': '',
      'es': '',
    },
    'n1qacs0m': {
      'en': 'Amount Used',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ks8nf2mu': {
      'en': 'Amount Allowed',
      'ar': '',
      'de': '',
      'es': '',
    },
    'cg8pzd5m': {
      'en': 'Amount Used',
      'ar': '',
      'de': '',
      'es': '',
    },
    'agwg3qj1': {
      'en': 'Home',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // accessCopy
  {
    '3dz75ewl': {
      'en': 'Pay',
      'ar': '',
      'de': '',
      'es': '',
    },
    'wywk9a0m': {
      'en': 'Send',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8shruwju': {
      'en': 'paying',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ua7v5nwb': {
      'en': 'sending',
      'ar': '',
      'de': '',
      'es': '',
    },
    'qrohg5xz': {
      'en': 'paying',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j4ah5enl': {
      'en': 'Choose option',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mgqvrux8': {
      'en': 'Beneficiary email',
      'ar': '',
      'de': '',
      'es': '',
    },
    '3yljofid': {
      'en': 'Paybill',
      'ar': '',
      'de': '',
      'es': '',
    },
    'srxg1fzj': {
      'en': 'Acc No.',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bl98pgrf': {
      'en': '\$ Amount',
      'ar': '',
      'de': '',
      'es': '',
    },
    'n318vdzp': {
      'en': 'Transfer',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4jxi2sub': {
      'en': 'Pay',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // makepayment
  {
    '1vrgzz9f': {
      'en': 'Pay',
      'ar': '',
      'de': '',
      'es': '',
    },
    '3fjbrki3': {
      'en': 'Enter payment details',
      'ar': '',
      'de': '',
      'es': '',
    },
    'p3m6te90': {
      'en': 'Paybill',
      'ar': '',
      'de': '',
      'es': '',
    },
    'bjr18yee': {
      'en': 'Acc No.',
      'ar': '',
      'de': '',
      'es': '',
    },
    'jr8dascu': {
      'en': 'Amount',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5wxfd9au': {
      'en': 'Pay',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // sending
  {
    '5d1de9f8': {
      'en': 'Send',
      'ar': '',
      'de': '',
      'es': '',
    },
    '5vu805tq': {
      'en': 'Enter recipient details',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dnyb875c': {
      'en': 'Email',
      'ar': '',
      'de': '',
      'es': '',
    },
    '7bw74xhp': {
      'en': 'Amount',
      'ar': '',
      'de': '',
      'es': '',
    },
    'hfpe2iji': {
      'en': 'Send',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // giveaccess
  {
    '8r7zw35a': {
      'en': 'Grant Access',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j080bqz1': {
      'en': 'Enter beneficiary details',
      'ar': '',
      'de': '',
      'es': '',
    },
    '33l22xxg': {
      'en': 'Email',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mry50pgw': {
      'en': 'Wallet Id',
      'ar': '',
      'de': '',
      'es': '',
    },
    'zvj3j5e6': {
      'en': 'Amount',
      'ar': '',
      'de': '',
      'es': '',
    },
    'r7d0js1s': {
      'en': 'Grant access',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // makepaymentCopy
  {
    '7p5sndax': {
      'en': 'Send',
      'ar': '',
      'de': '',
      'es': '',
    },
    '3j41640g': {
      'en': 'Pay',
      'ar': '',
      'de': '',
      'es': '',
    },
    'q80hfqkf': {
      'en': 'paying',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9odop570': {
      'en': 'paying',
      'ar': '',
      'de': '',
      'es': '',
    },
    'admba7xq': {
      'en': 'sending',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ms27y2y9': {
      'en': 'Please select...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'jyauvtnx': {
      'en': 'Search for an item...',
      'ar': '',
      'de': '',
      'es': '',
    },
    'o34k3gds': {
      'en': 'Paybill',
      'ar': '',
      'de': '',
      'es': '',
    },
    '7b0oj09a': {
      'en': 'Acc No.',
      'ar': '',
      'de': '',
      'es': '',
    },
    'r5w4k98v': {
      'en': 'Email',
      'ar': '',
      'de': '',
      'es': '',
    },
    'anjla1xw': {
      'en': 'Amount',
      'ar': '',
      'de': '',
      'es': '',
    },
    'igvsravn': {
      'en': 'Pay',
      'ar': '',
      'de': '',
      'es': '',
    },
    't7yhj95z': {
      'en': 'send',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
  // Miscellaneous
  {
    'rh7y92uo': {
      'en': 'Allow Notifications',
      'ar': '',
      'de': '',
      'es': '',
    },
    'efvtwj7k': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'ec5hfa1e': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'q5ljwvfo': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'j4rmwb3h': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '6ah1b18f': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '2kos1hen': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'dqezijgv': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '9fe9givf': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mlu0r6rn': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'gkynybk8': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'e2cd2fx0': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'aox3s4fb': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'l8hv5a7z': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '4pjwb70a': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '0xlokf4y': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '8twlwiwt': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'mil77lak': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'iz5ags2s': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'rvfdy03l': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'cslsgimz': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'nqiim4ke': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'v4g4gh5s': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    't4xzlq9q': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    '513nj4m0': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
    'a1jxfgju': {
      'en': '',
      'ar': '',
      'de': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
