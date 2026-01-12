import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF002C54);
  static const Color secondary = Color(0xFF00766C);
  static const Color background = Color(0xFFF2ECE1);

  static ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: background,
    primaryColor: primary,
    fontFamily: 'Montserrat',
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
  );
}
