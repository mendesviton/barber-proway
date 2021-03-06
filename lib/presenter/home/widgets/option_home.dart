import 'package:flutter/material.dart';

import '../../adress/adress_page.dart';
import '../../calendar/calendar_page.dart';
import '../../services/services_page.dart';

class OptionHome extends StatelessWidget {
  const OptionHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 1,
            color: Color.fromARGB(255, 43, 31, 12),
          )
        ],
        color: Colors.brown[900],
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.location_on_outlined,
                  size: 35,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  'Blumenau - SC',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Roboto Mono',
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const NavigationButton(
              title: 'Agendar horário',
              description: 'Escolha o barbeiro e agende o seu horário',
              page: CalendarPage()),
          const NavigationButton(
              title: 'Serviços',
              description: 'Escolha uma serviço de barbearia',
              page: ServicesPage()),
          const NavigationButton(
              title: 'Contato',
              description: 'Fale conosco',
              page: AdressPage()),
        ],
      ),
    );
  }
}

class NavigationButton extends StatelessWidget {
  final String title;
  final String description;
  final Widget page;

  const NavigationButton({
    Key? key,
    required this.title,
    required this.description,
    required this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.blue.withOpacity(0.4),
      splashColor: Colors.green.withOpacity(0.5),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Row(
          children: [
            Icon(
              shadows: [
                Shadow(
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  color: Color.fromARGB(255, 84, 72, 9),
                )
              ],
              Icons.phone,
              size: 50,
              color: Colors.white,
            ),
            const SizedBox(
              width: 30,
            ),
            SizedBox(
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(0, 2),
                              blurRadius: 3,
                              color: Color.fromARGB(255, 78, 74, 70),
                            )
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19)),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 3,
                          color: Color.fromARGB(255, 78, 74, 70),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
