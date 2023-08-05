import 'package:drug/core/resources/assests.dart';
import 'package:drug/core/theme/color_palatte.dart';
import 'package:flutter/material.dart';

class DrugTheme {
  static final ThemeData light = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: Assets.iranYekan,
    brightness: Brightness.light,
    //! Colors
    primaryColor: ColorPalette.primary,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    canvasColor: ColorPalette.background,
    scaffoldBackgroundColor: ColorPalette.scaffoldBackground,
    // dividerColor: ColorPalette.divider,
    // shadowColor: ColorPalette.light.shadow,
    hintColor: ColorPalette.textSecoundy,
    // disabledColor: ColorPalette.light.disabled,
    // primaryColorDark: ColorPalette.light.primaryDark,
    // primaryColorLight: ColorPalette.light.primaryLight,
    cardColor: ColorPalette.scaffoldBackground,
    useMaterial3: true,
    //! AppBar
    appBarTheme: AppBarTheme(
        elevation: 0,
        // shadowColor: ColorPalette.light.shadow,
        color: ColorPalette.scaffoldBackground,
        iconTheme: const IconThemeData(color: ColorPalette.textSecoundy),
        actionsIconTheme: const IconThemeData(color: ColorPalette.textSecoundy),
        titleTextStyle: Typography.englishLike2018.bodyLarge!.copyWith(
            height: 1.5,
            letterSpacing: 0,
            color: ColorPalette.textPrimary,
            fontWeight: FontWeight.normal)),
    iconTheme: const IconThemeData(color: ColorPalette.textSecoundy),
    tabBarTheme: const TabBarTheme(
      // unselectedLabelColor: ColorPalette.light.darkGray,
      labelColor: Colors.black,
      labelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        fontFamily: Assets.iranYekan,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: Assets.iranYekan,
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: ColorPalette.fieldColor,
    ),
    //!button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(ColorPalette.primary),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        elevation: MaterialStateProperty.all(0),
        textStyle: MaterialStateProperty.all(
          const TextStyle(
            color: ColorPalette.textPrimary,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: Assets.iranYekan,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(
            (states) => ColorPalette.scaffoldBackground),
        overlayColor:
            MaterialStateProperty.resolveWith((states) => ColorPalette.primary),
        elevation: MaterialStateProperty.all(0),
      ),
    ),
    //! Texts
    textTheme: TextTheme(
      labelSmall: Typography.englishLike2021.labelSmall?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 10,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w500,
      ),
      labelMedium: Typography.englishLike2021.labelMedium?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 12,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: Typography.englishLike2021.labelLarge?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 14,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: Typography.englishLike2021.bodySmall?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 12,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: Typography.englishLike2021.bodyMedium?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 14,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: Typography.englishLike2021.bodyLarge?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 16,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w400,
      ),
      headlineSmall: Typography.englishLike2021.headlineSmall?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 16,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w500,
      ),
      headlineMedium: Typography.englishLike2021.headlineMedium?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 20,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w400,
      ),
      headlineLarge: Typography.englishLike2021.headlineLarge?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 24,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w400,
      ),
      displaySmall: Typography.englishLike2021.displaySmall?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 24,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w500,
      ),
      displayMedium: Typography.englishLike2021.displayMedium?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 32,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w400,
      ),
      displayLarge: Typography.englishLike2021.displayLarge?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 48,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: Typography.englishLike2021.titleSmall?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 14,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w700,
      ),
      titleMedium: Typography.englishLike2021.titleMedium?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 16,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: Typography.englishLike2021.titleLarge?.copyWith(
        height: 1.5,
        letterSpacing: 0,
        color: ColorPalette.textPrimary,
        fontSize: 20,
        fontFamily: Assets.iranYekan,
        fontWeight: FontWeight.w700,
      ),
    ).apply(),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: ColorPalette.primary),
  );
}
