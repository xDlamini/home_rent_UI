import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get gradientBlueToLightBlue => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.blue200, appTheme.lightBlue70001],
        ),
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5.h),
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue700.withOpacity(0.5),
        borderRadius: BorderRadius.circular(5.h),
      );
}

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {Key? key,
      this.alignment,
      this.height,
      this.width,
      this.padding,
      this.decoration,
      this.child,
      this.onTap})
      : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center, child: iconButtonWidget)
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.black900.withOpacity(0.24),
                  borderRadius: BorderRadius.circular(17.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}
