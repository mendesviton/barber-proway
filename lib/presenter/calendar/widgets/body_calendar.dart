import 'package:flutter/material.dart';

class CalendarBody extends StatefulWidget {
  const CalendarBody({
    Key? key,
  }) : super(key: key);

  @override
  State<CalendarBody> createState() => _CalendarBodyState();
}

class _CalendarBodyState extends State<CalendarBody> {
  List<Map> myButtons = [{}];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                  color: Colors.orange,
                ),
                Column(
                  children: const [
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
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 20,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Wrap(
            spacing: 7,
            runSpacing: 15,
            children: buildButtons(),
          ),
        ],
      ),
    );
  }

  List<Widget> buildButtons() {
    List<Widget> listButtons = List.generate(
      24,
      (i) {
        Color colorButton = Colors.orange;
        if (myButtons.isNotEmpty && myButtons[i].isNotEmpty) {
          colorButton = myButtons[i]['active'] ? Colors.grey : Colors.orange;
        }

        String option = "Disponível";
        if (myButtons.isNotEmpty && myButtons[i].isNotEmpty) {
          option = myButtons[i]['active'] ? "Reservado" : "Disponível";
        }

        List<String> horario = [
          "08:00",
          "08:30",
          "09:00",
          "09:30",
          "10:00",
          "10:30",
          "11:00",
          "11:30",
          "12:00",
          "12:30",
          "13:00",
          "13:30",
          "14:00",
          "14:30",
          "15:00",
          "15:30",
          "16:00",
          "16:30",
          "17:00",
          "17:30",
          "18:00",
          "18:30",
          "19:00",
          "19:30"
        ];

        Widget button = MaterialButton(
          color: colorButton,
          onPressed: () {
            if (myButtons.isNotEmpty && myButtons[i].isNotEmpty) {
              myButtons[i]['active'] = !myButtons[i]['active'];
              setState(() {});
            }
          },
          child: Column(
            children: [
              Text(
                horario[i].toString(),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(
                option,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        );
        myButtons.add(
          {
            'button': button,
            'active': false,
          },
        );
        return button;
      },
    );

    return listButtons;
  }
}
