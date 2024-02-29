import 'package:flutter/material.dart';

import 'splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}
Color backgroundcolor =Colors.white;
Color maincolor = Colors.green;
SizedBox smallbox = const SizedBox(height: 20);