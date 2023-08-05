import 'dart:io';

import 'package:drug/core/router/routes.dart';
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
