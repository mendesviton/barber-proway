
import 'package:flutter/material.dart';

import '../../page_calendar/calendar_page.dart';
import '../../page_endereco/endereco.dart';
import '../../services/services_page.dart';


class OptionContainer extends StatelessWidget {
  const OptionContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 350,
      height: 450,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 1,
              color: Color.fromARGB(255, 43, 31, 12),
              // offset: Offset(2, 8))
            )
          ],
          color: Colors.brown[900],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15))),
      // color: Colors.amber,
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
                      fontFamily: 'Roboto Mono'),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          //CONTAINER DO MEIO
          InkWell(
            highlightColor: Colors.blue.withOpacity(0.4),
            splashColor: Colors.green.withOpacity(0.5),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CalendarPage()));
            },
            child: Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              decoration: BoxDecoration(
                color: Colors.orange,
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              // color: Colors.white,
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20),
              child: Row(
                children:  [
                 const Icon(
                    shadows: [
                      Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 3,
                          color: Color.fromARGB(255, 78, 74, 70))
                    ],
                    Icons.calendar_month,
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
                      children: const [
                        Text('Agendar horário',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 3,
                                      color: Color.fromARGB(
                                          255, 78, 74, 70))
                                ],
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19)),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Escolha o  barbeiro e agende o seu horário',
                          style: TextStyle(
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 3,
                                  color:
                                      Color.fromARGB(255, 78, 74, 70))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            highlightColor: Colors.blue.withOpacity(0.4),
            splashColor: Colors.green.withOpacity(0.5),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CutsPage()));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              decoration: BoxDecoration(
                color: Colors.orange,
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              // color: Colors.white,
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Icon(
                    shadows: [
                      Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 3,
                          color: Color.fromARGB(255, 84, 72, 9))
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
                      children: const [
                        Text('Serviços',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 3,
                                      color: Color.fromARGB(
                                          255, 78, 74, 70))
                                ],
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19)),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Escolha o serviço de barbearia',
                          style: TextStyle(
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 3,
                                  color:
                                      Color.fromARGB(255, 78, 74, 70))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            highlightColor: Colors.blue.withOpacity(0.4),
            splashColor: Colors.green.withOpacity(0.5),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const EnderecoPage()));
            },
            child: Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
              decoration: BoxDecoration(
                color: Colors.orange,
                // color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
                // boxShadow: const [
                //   BoxShadow(
                //     blurRadius: 2,
                //     spreadRadius: 3,
                //     color: Color.fromARGB(155, 0, 0, 0),
                //     // offset: Offset(2, 8))
                //   )]
              ),
              // color: Colors.white,
              padding: const EdgeInsets.symmetric(
                  horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Icon(
                    shadows: [
                      Shadow(
                        offset: Offset(0, 2),
                        blurRadius: 3,
                        color: Color.fromARGB(255, 78, 74, 70),
                      ),
                    ],
                    Icons.email_outlined,
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
                      children: const [
                        Text('Contato',
                            style: TextStyle(
                                shadows: [
                                  Shadow(
                                      offset: Offset(0, 2),
                                      blurRadius: 3,
                                      color: Color.fromARGB(
                                          255, 78, 74, 70))
                                ],
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 19)),
                        SizedBox(height: 10),
                        Text(
                          'Entre em contato com o barbeiro',
                          style: TextStyle(
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 3,
                                  color:
                                      Color.fromARGB(255, 78, 74, 70))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
