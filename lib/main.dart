import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:flutter_template/core/constants/app/app_constants.dart';
import 'package:flutter_template/core/init/lang/language_setup.dart';
import 'package:flutter_template/core/init/navigation/navigation_route.dart';
import 'package:flutter_template/core/init/navigation/navigation_service.dart';
import 'package:flutter_template/core/init/notifier/theme_notifier.dart';
import 'package:flutter_template/view/example/view/example_view.dart';
import 'core/init/notifier/provider_setup.dart';

void main() {
   Hive.init('data');
   FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError; // records all errors to crashlytics
  runApp(
      MultiProvider(
        providers:
        [...ApplicationProviders.dependItems], //initializes providers that we use within the project
        child: EasyLocalization(  // Gets default phone locale and determines app language, translates using related language json files
            child: MyApp(),
            supportedLocales: LanguageSetup.supportedLocales,
            fallbackLocale: LanguageSetup.enLocale, // when device locale is not supported uses English translations
            path: ApplicationConstants.LANG_ASSETS_PATH),
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'Flutter Demo',
        theme: Provider.of<ThemeNotifier>(context, listen: true).currentTheme, //listens to changes to the app theme and sets throughout the app
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.deviceLocale, // sets up the locale to the device's locale for translation
        home: ExampleView(),
        navigatorKey: NavigationService().navigatorKey, //exampe use of navigation service to navigate through the app
        onGenerateRoute: NavigationRoute().generateRoute,
      );
  }
}
