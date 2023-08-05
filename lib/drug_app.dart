import 'package:drug/core/constants/app_config.dart';
import 'package:drug/core/router/drug_router.dart';
import 'package:drug/core/router/routes.dart';
import 'package:drug/core/theme/drug_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DrugApp extends StatelessWidget {
  const DrugApp({super.key});

  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'mainNavigator');

  @override
  Widget build(BuildContext context) => EasyLocalization(
        supportedLocales: AppConfig.supportedLocales,
        path: AppConfig.localePath,
        startLocale: AppConfig.persianLocale,
        fallbackLocale: AppConfig.persianLocale,
        useOnlyLangCode: true,
        child: Builder(
          builder: (context) {
            return MaterialApp(
              navigatorKey: navigatorKey,
              // title: AppConfig.appName,
              builder: (context, child) {
                child = myBuilder(context, child);
                return child!;
              },
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
              debugShowCheckedModeBanner: false,
              initialRoute: Routes.splash,
              onGenerateRoute: DrugRouter.router.generator,
              theme: DrugTheme.light,
            );
          },
        ),
      );
}

Widget? myBuilder(BuildContext context, Widget? child) {
  return Align(
    alignment: Alignment.center,
    child: Container(
      constraints: const BoxConstraints(maxWidth: 480),
      child: Builder(
        builder: (context) => MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaleFactor: 0.88),
          child: Builder(
            builder: (context) => Material(
              child: SafeArea(
                top: false,
                bottom: true,
                child: child ?? Container(),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
