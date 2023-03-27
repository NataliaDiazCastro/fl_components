import 'package:flutter/material.dart';

class AppTheme {
  // Color Primario
  static const Color primary = Colors.pink;

  // Tema light
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      // Color primario
      primaryColor: primary,

      // AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 10),

      // TextButton Theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),

      // FloatingActionButtons
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primary),

      // ElevatedButtons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ));

  // Tema dark
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      // Color primario
      primaryColor: primary,

      // AppBar Theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 10));
}
