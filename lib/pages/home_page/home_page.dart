
import 'package:flutter/material.dart';

import '../page_calendar/calendar_page.dart';
import '../page_endereco/endereco.dart';
import '../services/services_page.dart';
import 'widgets/body_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Find a barber',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PrincipalPage(),
    );
  }
}

class PrincipalPage extends StatelessWidget {
  const PrincipalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      physics: PageScrollPhysics(),
      child: BodyHome(size: size),
    ));
  }
}
