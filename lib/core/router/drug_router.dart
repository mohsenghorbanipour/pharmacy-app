import 'dart:io';

import 'package:drug/core/router/routes.dart';
import 'package:drug/modules/drug%20details/ui/page/drug_details_page.dart';
import 'package:drug/modules/main/ui/page/main_page.dart';
import 'package:drug/modules/splash/ui/page/splash_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/foundation.dart';

class DrugRouter {
  static FluroRouter router = FluroRouter();

  static final TransitionType _tansitionFadeIn = kIsWeb || !Platform.isIOS
      ? TransitionType.fadeIn
      : TransitionType.cupertino;

  static final Map<String, Handler> _fadeInHandlers = <String, Handler>{
    Routes.splash: Handler(
      handlerFunc: (_, __) => const SplashPage(),
    ),
    Routes.main: Handler(
      handlerFunc: (_, __) => const MainPage(),
    ),
    Routes.drugDetails: Handler(
      handlerFunc: (context, __) {
        Map<String, dynamic> args =
            context?.settings?.arguments as Map<String, dynamic>;
        return DrugDetailsPage(
          drug: args['drug'],
        );
      },
    )
  };

  static void setupRouter() {
    _fadeInHandlers.forEach(
      (route, handler) => router.define(
        route,
        handler: handler,
        transitionType: _tansitionFadeIn,
        transitionDuration: const Duration(
          milliseconds: 150,
        ),
      ),
    );
  }
}
