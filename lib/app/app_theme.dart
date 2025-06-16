import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: AppColors.getMaterialColor(AppColors.themeColor),
        ),
        textTheme: _titleLarge,
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            border: _getInputBorder(AppColors.themeColor),
            enabledBorder: _getInputBorder(AppColors.themeColor),
            focusedBorder: _getInputBorder(AppColors.themeColor),
            errorBorder: _getInputBorder(Colors.red),
            hintStyle:
                TextStyle(fontWeight: FontWeight.w400, color: Colors.grey)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              fixedSize: Size.fromWidth(double.maxFinite),
              backgroundColor: AppColors.themeColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.symmetric(vertical: 8),
              textStyle: TextStyle(
                  fontSize: 16,
                  letterSpacing: .4,
                  fontWeight: FontWeight.w500)),
        ));
  }

  static OutlineInputBorder _getInputBorder(Color color) {
    return OutlineInputBorder(borderSide: BorderSide(color: color, width: 1.5));
  }

  static TextTheme get _titleLarge {
    return TextTheme(
      titleLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        letterSpacing: .4,
      ),
      titleMedium: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        letterSpacing: .4,
      ),
      titleSmall: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        letterSpacing: .4,
        color: AppColors.themeColor
      ),
      headlineSmall: TextStyle(fontSize: 14, color: Colors.grey),
    );
  }
}
