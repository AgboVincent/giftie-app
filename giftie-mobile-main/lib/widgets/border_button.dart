import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/theme/app_styles.dart';
import 'package:helper_widgets/loading_spinner.dart';

class BorderButton extends MaterialButton {
  const BorderButton(
      {this.title,
      onPressed,
      Key? key,
      color,
      textColor = Colors.white,
      isElevated = false,
      // this.isInverted = false,
      @required this.child,
      this.showProgress = false,
      this.expanded = true,
      height = 56.0})
      : assert(child != null || title != null),
        super(
            key: key,
            color: color,
            textColor: textColor,
            elevation: isElevated ? null : 0.0,
            height: height,
            onPressed: onPressed);

  final String? title;

  // final bool isInverted;
  final Widget? child;
  final bool showProgress;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    var shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
      side: BorderSide(color: AppColor.borderColor, width: 0.5),
    );

    return MaterialButton(
        color: color ?? AppColor.inputFieldBg,
        disabledColor: AppColor.placeholder,
        minWidth: expanded ? double.maxFinite : null,
        height: height,
        elevation: elevation,
        shape: shape,
        onPressed: onPressed == null
            ? null
            : () {
                if (showProgress) return;
                onPressed!();
              },
        child: showProgress
            ? LoadingSpinner(color: Colors.white)
            : child != null
                ? child
                : Text(
                    title!.toUpperCase(),
                    style: Theme.of(context).textTheme.button,
                  ));
  }
}
