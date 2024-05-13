import 'package:flutter/material.dart';
import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.black900.withOpacity(0.24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.whiteA700.withOpacity(0.5),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray60001,
          fontSize: 12.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w400,
        ),
        labelLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 13.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 10.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 16.fSize,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);
  Color get black90000 => Color(0X000C0C0C);
// Blue
  Color get blue200 => Color(0XFF9FD9FA);
// BlueGray
  Color get blueGray100 => Color(0XFFD4D4D4);
  Color get blueGray10001 => Color(0XFFD6D6D6);
  Color get blueGray30099 => Color(0X998198AC);
  Color get blueGray400 => Color(0XFF8E8E8E);
  Color get blueGray40001 => Color(0XFF888888);
  Color get blueGray80014 => Color(0X14363B64);
// Gray
  Color get gray100 => Color(0XFFF6F6F6);
  Color get gray200 => Color(0XFFEFEFEF);
  Color get gray400 => Color(0XFFB6B6B6);
  Color get gray50 => Color(0XFFF9F9F9);
  Color get gray600 => Color(0XFF828282);
  Color get gray60001 => Color(0XFF848484);
// LightBlue
  Color get lightBlue700 => Color(0XFF0A8ED9);
  Color get lightBlue70001 => Color(0XFF098DD8);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
}
