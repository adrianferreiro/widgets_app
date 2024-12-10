import 'package:flutter/material.dart';
import 'package:widgets_app/presentation/screen/home/home_screen_dart.dart';

import 'config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 1).getTheme(),
        home: const HomeScreen());
  }
}
