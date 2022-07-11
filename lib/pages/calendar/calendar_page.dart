import 'package:flutter/material.dart';

import 'widgets/body_calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(150, 150, 91, 51),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 25,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "Escolha seu horário: ",
            style: TextStyle(
              fontSize: 20,
              color: Colors.amber,
            ),
          ),
        ),
      ),
      body: const CalendarBody(),
    );
  }
}
