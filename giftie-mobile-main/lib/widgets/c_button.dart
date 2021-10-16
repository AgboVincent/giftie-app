import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:helper_widgets/loading_spinner.dart';

class CButton extends MaterialButton {
  const CButton(
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
      : outline = false,
        assert(child != null || title != null),
        super(
            key: key,
            color: color,
            textColor: textColor,
            elevation: isElevated ? null : 0.0,
            height: height,
            onPressed: onPressed);

  const CButton.outline({
    this.title,
    onPressed,
    Key? key,
    color,
    textColor = Colors.white,
    isElevated = false,
    // this.isInverted = false,
    this.child,
    this.showProgress = false,
    height = 56.0,
    this.expanded = true,
  })  : outline = true,
        assert(child != null || title != null),
        super(
            key: key,
            color: color,
            textColor: textColor,
            elevation: isElevated ? 2.0 : null,
            height: height,
            onPressed: onPressed);

  final String? title;
  final bool outline;
  // final bool isInverted;
  final Widget? child;
  final bool showProgress;
  final bool expanded;

  @override
  Widget build(BuildContext context) {
    var shape =
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0));
    if (outline) {
      return SizedBox(
        height: height,
        width: expanded ? double.maxFinite : null,
        child: OutlineButton(
          focusColor: AppColor.redError,
          borderSide: BorderSide(color: AppColor.borderColor, width: 0.5),
          shape: shape,
          onPressed: () {
            if (showProgress) return;
            onPressed!();
          },
          child: showProgress
              ? LoadingSpinner(color: color)
              : child != null
                  ? child
                  : Text(
                      title!.toUpperCase(),
                      style: TextStyle(
                        color: AppColor.white,
                        fontSize: 16,
                        letterSpacing: 0.5,
                      ),
                    ),
        ),
      );
    }
    return MaterialButton(
      color: color ?? Theme.of(context).buttonColor,
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
                ),
    );
  }
}
