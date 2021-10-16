import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/theme/app_styles.dart';

enum AppTheme { Light, Dark }

final appThemeData = {
  AppTheme.Dark: ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: AppColor.primary,
    canvasColor: AppColor.primary,
    accentColor: AppColor.buttonColor,
    dividerColor: AppColor.off_white,
    fontFamily: 'Poppins',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    buttonColor: AppColor.buttonColor,
    textTheme: TextTheme(
      headline3: AppStyles.header1,
      headline4: AppStyles.headerText,
      bodyText1: AppStyles.bodyText,
      button: AppStyles.buttonText,
    ).apply(fontFamily: 'Poppins', bodyColor: AppColor.white, displayColor: AppColor.white),
    appBarTheme: AppBarTheme(
        color: AppColor.primary,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        iconTheme: IconThemeData(color: AppColor.primary)),
    colorScheme: ColorScheme.light(
        onPrimary: AppColor.white,
        primary: AppColor.primary,
        secondary: AppColor.purple,
        onBackground: AppColor.white,
        brightness: Brightness.light,
        error: AppColor.redError),
  ),
};
