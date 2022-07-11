import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  State<CalendarPage> createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  List<Map> myButtons = [{}];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade700,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.orange,
        title: const Text(
          'Escolha seu horário',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    size: 20,
                    color: Colors.amber,
                  ),
                  Column(
                    children: const[
                      Text(
                        "12 de julho",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "amanhã",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 20,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            Wrap(
              spacing: 5, runSpacing: 12, children: buildButtons(),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildButtons() {
    List<Widget> listButtons = List.generate(24, (i) {
      Color colorButton = Colors.amber;
      if (myButtons.isNotEmpty && myButtons[i].isNotEmpty) {
        colorButton = myButtons[i]['active'] ? Colors.grey : Colors.amber;
      }
      
      String option = "Disponível";
      if (myButtons.isNotEmpty && myButtons[i].isNotEmpty) {
        option = myButtons[i]['active'] ? "Reservado" : "Disponível";
      }

      List<String> horario = [ "08:00", "08:30", "09:00", "09:30", "10:00", "10:30", "11:00", "11:30", "12:00", "12:30", "13:00", "13:30", "14:00", "14:30",
       "15:00", "15:30", "16:00", "16:30", "17:00", "17:30", "18:00", "18:30", "19:00", "19:30"];

      Widget button = MaterialButton(
        color: colorButton,
        onPressed: () {
          if (myButtons.isNotEmpty && myButtons[i].isNotEmpty) {
            myButtons[i]['active'] = !myButtons[i]['active'];
            setState(() {});
          }
        },
        child: Column(children: [
          Text(horario[i].toString(), style: const TextStyle(fontSize: 20),),
          Text(option, style: const TextStyle(fontSize: 16),),
        ]),
      );
      myButtons.add({
        'button': button,
        'active': false,
      });
      return button;
    });

    return listButtons;
  }
}
