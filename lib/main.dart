import 'package:flutter/material.dart';
import 'pages/splash/splash_screen.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'App teste',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
