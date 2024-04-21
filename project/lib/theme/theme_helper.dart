import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "primary";
PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          if (states.contains(MaterialState.selected)) {
            return colorScheme.primary;
          }
          return Colors.transparent;
        }),
        side: BorderSide(
          width: 1,
        ),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.black900.withOpacity(0.7),
          fontSize: 16.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.secondaryContainer,
          fontSize: 40.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 32.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Manrope',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray50,
          fontSize: 13.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelMedium: TextStyle(
          color: appTheme.black900,
          fontSize: 10.fSize,
          fontFamily: 'Sarabun',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onPrimaryContainer.withOpacity(1),
          fontSize: 20.fSize,
          fontFamily: 'Sarabun',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.gray200,
          fontSize: 16.fSize,
          fontFamily: 'Sarabun',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          // color: colorScheme.onPrimaryContainer.withOpacity(1),
          color: appTheme.black900,
          fontSize: 14.fSize,
          fontFamily: 'Sarabun',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    primary: Color(0XFF83C17E),
    primaryContainer: Color(0XFF343434),
    secondaryContainer: Color(0XFFF7AD50),
    errorContainer: Color(0XFF666666),
    onError: Color(0XFFF48F49),
    onPrimaryContainer: Color(0X14FFFFFF),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber500 => Color(0XFFFFC107);
// Black
  Color get black900 => Color(0XFF000000);
// Blue
  Color get blue800 => Color(0XFF0D63D1);
  Color get blueA400 => Color(0XFF2F89FC);
// BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
// Gray
  Color get gray200 => Color(0XFFF6EDED);
  Color get gray50 => Color(0XFFFFF6F6);
  Color get gray80001 => Color(0XFF673434);
// Green
  Color get green100 => Color(0XFFC6F0C7);
  Color get green10001 => Color(0XFFC5F0C7);
  Color get green500 => Color(0XFF4CAF50);
// Indigo
  Color get indigo500 => Color(0XFF474BCA);
// Lime
  Color get lime200 => Color(0XFFDDE79B);
// Pink
  Color get pinkA400 => Color(0XFFFE004A);
// Red
  Color get red500 => Color(0XFFEB4335);

  Color get red200 => Color(0XFFF5A9A9);

  Color get whiteA700 => Color(0XFFFFFDFD);

  Color get gray600 => Color(0XFF848484);

  Color get gray300 => Color(0XFFE4EADF);

  Color get indigoA700 => Color(0XFF2730FF);

  Color get green700 => Color(0XFF23B000);

  Color get gray700 => Color(0XFF666666);

  Color get gray800 => Color(0XFF534C4C);

  Color get whiteA70001 => Color(0XFFFFFDFD);

  Color get lime800 => Color(0XFFB07D1B);

  Color get pink400 => Color(0XFFE33B82);

  Color get redA700 => Color(0XFFEC0808);



}
