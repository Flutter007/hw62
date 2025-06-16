import 'package:flutter/material.dart';

final lightColorScheme = ColorScheme.fromSeed(seedColor: Colors.cyanAccent);
final defaultLightTheme = ThemeData.light();
final lightTheme = defaultLightTheme.copyWith(
  colorScheme: lightColorScheme,
  appBarTheme: AppBarTheme().copyWith(
    backgroundColor: lightColorScheme.onPrimaryContainer,
    foregroundColor: lightColorScheme.surface,
  ),
  cardTheme: defaultLightTheme.cardTheme.copyWith(
    color: lightColorScheme.onPrimary,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: lightColorScheme.surface,
      foregroundColor: lightColorScheme.onPrimaryContainer,
    ),
  ),
  scaffoldBackgroundColor: lightColorScheme.primaryContainer.withValues(
    alpha: 1.1,
  ),
);
