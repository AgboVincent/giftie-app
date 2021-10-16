import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';


class PinHolder extends StatelessWidget {
   PinHolder({this.controller}) ;
  final controller;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
         color: AppColor.inputFieldBg,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        textInputAction: TextInputAction.next,
        onChanged: (_) => FocusScope.of(context).nextFocus(),
        maxLength: 1,
        keyboardType: TextInputType.number,
        style: TextStyle(
          color: AppColor.off_white
        ),
        cursorColor: AppColor.off_white,
        buildCounter: (BuildContext? context, { int? currentLength,
          int? maxLength, bool? isFocused }) => null,
        decoration: InputDecoration(
            fillColor: AppColor.inputFieldBg,
            filled: true,
            contentPadding: EdgeInsets.only(left: 30,  top: 45),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide( color: AppColor.inputFieldBg, width:1.0)
            ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide( color: AppColor.off_white, width:1.0)
         ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide( color: AppColor.inputFieldBg, width:1.0)
            ),
        focusedErrorBorder: new OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide( color: AppColor.off_white, width:1.0)),
        ),
      ),
    );
  }
}