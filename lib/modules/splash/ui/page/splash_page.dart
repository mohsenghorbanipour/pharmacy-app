// ignore_for_file: use_build_context_synchronously

import 'package:drug/core/components/loading_components.dart';
import 'package:drug/core/resources/assests.dart';
import 'package:drug/core/router/drug_router.dart';
import 'package:drug/core/router/routes.dart';
import 'package:drug/core/theme/color_palatte.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    _initData();
    super.initState();
  }

  Future<void> _initData() async {
    await Future.delayed(const Duration(seconds: 2));
    DrugRouter.router.navigateTo(
      context,
      Routes.main,
      replace: true,  
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ColorPalette.primary,
                ColorPalette.primaryDark,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Image.asset(
                    Assets.drug,
                    width: 260,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: Text(
                      'splash_name'.tr(),
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: ColorPalette.scaffoldBackground,
                              ),
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 12),
                child: LoadingComponent(
                  color: ColorPalette.scaffoldBackground,
                  size: 24,
                ),
              )
            ],
          ),
        ),
      );
}
