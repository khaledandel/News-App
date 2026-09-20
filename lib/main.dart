import 'package:flutter/material.dart';
import 'package:news_app/core/theme/light_theme.dart';
// ignore: unused_import
import 'package:news_app/fetures/on_bording/on_bording_screen.dart';
// ignore: unused_import
import 'package:news_app/fetures/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      theme: lightMode,
      debugShowCheckedModeBanner: false,
      home: OnBordingScreen(),
    );
  }
}
