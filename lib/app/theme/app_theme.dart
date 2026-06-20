import 'package:flutter/material.dart';

class AppTheme {
  static final ColorScheme lightColorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF4F46E5),
    brightness: Brightness.light,
  );

  static final ColorScheme darkColorScheme = ColorScheme.fromSeed(
    seedColor: const Color(0xFF4F46E5),
    brightness: Brightness.dark,
  );

  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: lightColorScheme,
    scaffoldBackgroundColor: lightColorScheme.surface,
    appBarTheme: AppBarTheme(
      centerTitle: false,
      backgroundColor: lightColorScheme.surface,
      foregroundColor: lightColorScheme.onSurface,
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    colorScheme: darkColorScheme,
    scaffoldBackgroundColor: darkColorScheme.surface,
    appBarTheme: AppBarTheme(
      centerTitle: false,
      backgroundColor: darkColorScheme.surface,
      foregroundColor: darkColorScheme.onSurface,
    ),
  );
}
