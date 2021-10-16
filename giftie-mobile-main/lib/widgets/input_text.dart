import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';

class InputTextField extends StatelessWidget {
  final controller;
  final hintText;
  InputTextField({ this.controller, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(
          color: AppColor.placeholderText,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
        ),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding:
            new EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide( color: AppColor.inputFieldBg, width:0.0)
            ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide( color: AppColor.inputFieldBg, width:0.0)
         ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide( color: AppColor.inputFieldBg, width:0.0)
            ),
        focusedErrorBorder: new OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide( color: AppColor.inputFieldBg, width:0.0)),
        errorStyle: TextStyle(fontSize: 15),
        hintText: hintText,
        hintStyle: TextStyle(
            color: AppColor.placeholderText,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            letterSpacing: 0.3
        ),
        fillColor:AppColor.inputFieldBg,
        filled: true,                   
      ),
    );
  }
}