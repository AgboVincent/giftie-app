import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';

class AppStyles {
  static final header1 = TextStyle(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, fontSize: 48, color: AppColor.white);

  static final header2 = TextStyle(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.bold, fontSize: 32, color: AppColor.white);

  static final headerText = TextStyle(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.w700, fontSize: 36);

  static final bodyText = TextStyle(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.normal, fontSize: 15);

  static final buttonText = TextStyle(
      fontStyle: FontStyle.normal, fontWeight: FontWeight.w500, fontSize: 16);

  static double topPadding(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  static double bottomPadding(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }
}
