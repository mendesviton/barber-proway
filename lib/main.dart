import 'package:flutter/material.dart';
import 'package:project/pages/Splash/SplashScreen.dart';
import 'package:project/pages/page_calendar/calendar_page.dart';
import 'package:project/pages/page_change_professional/widgets/body_change_professional.dart';
import 'package:project/pages/services/services_page.dart';

import 'pages/page_endereco/endereco.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'App teste',
      home: SplashScreen(),
      // home: PrincipalPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
