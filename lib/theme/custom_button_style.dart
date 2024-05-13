import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillBlackTL10 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.black900.withOpacity(0.3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.h),
        ),
      );
// Gradient button style
  static BoxDecoration get gradientBlueToLightBlueDecoration => BoxDecoration(
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [appTheme.blue200, appTheme.lightBlue70001],
        ),
      );
// text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
