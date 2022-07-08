import 'package:flutter/material.dart';
import 'package:project/pages/page_calendar/calendar_page.dart';
import 'package:project/pages/page_change_professional/widgets/body_change_professional.dart';
import 'package:project/pages/services/widgets/card_services.dart';

import 'pages/page_endereco/endereco.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'App teste',
      home: PrincipalPage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
      child: Container(
        // width: size.width,
        // height: size.height,
        decoration:
            BoxDecoration(color: Color.fromARGB(255, 150, 91, 51), boxShadow: [
          //efeito de profundidade
          BoxShadow(
              blurRadius: 30,
              spreadRadius: 10,
              color: Colors.blueGrey.shade50,
              offset: const Offset(2, 8))
        ]),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(

                      // radius: 50,
                      backgroundColor: Colors.orange,
                      maxRadius: 90,
                      child: Image.asset('assets/images/barber.png')),

                  const SizedBox(
                    width: 10,
                  ),
                  // Text('AppBarber',
                  //     style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 17,
                  //         fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Container(
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
                  color: Color.fromARGB(255, 14, 10, 10),
                  borderRadius: BorderRadius.circular(15)),
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
                        children: [
                           Icon(
                            shadows: [
                              Shadow(
                                  offset: Offset(0, 2),
                                  blurRadius: 3,
                                  color: Color.fromARGB(255, 172, 148, 16))
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
                                                  255, 172, 148, 16))
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
                                          color: Color.fromARGB(255, 84, 72, 9))
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
                        color: Color.fromARGB(255, 78, 92, 179),
                        // color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      // color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        children: [
                          const Icon(
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
                                                  255, 52, 57, 209))
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
                                              Color.fromARGB(255, 10, 41, 140))
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
                          color: Color.fromARGB(255, 105, 174, 35),
                          // color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 2,
                              spreadRadius: 3,
                              color: Color.fromARGB(155, 0, 0, 0),
                              // offset: Offset(2, 8))
                            )
                          ]),
                      // color: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Row(
                        children: [
                          const Icon(
                            shadows: [
                              Shadow(
                                offset: Offset(0, 2),
                                blurRadius: 3,
                                color: Color.fromARGB(255, 68, 157, 16),
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
                                                  255, 34, 85, 4))
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
                                              Color.fromARGB(255, 58, 141, 9))
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
            )
          ],
        ),
      ),
    ));
  }
}
