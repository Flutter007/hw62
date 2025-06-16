import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hw62/screens/start_screen.dart';
import 'package:hw62/theme/light_theme.dart';

void main() {
  runApp(
    ProviderScope(child: MaterialApp(theme: lightTheme, home: StartScreen())),
  );
}
