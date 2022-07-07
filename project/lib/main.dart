import 'package:flutter/material.dart';
import 'package:project/pages/page_change_professional/widgets/body_change_professional.dart';

void main() {
  runApp(const MaterialApp(
      title: 'App teste',
      home: ChangeProfessional(),
      debugShowCheckedModeBanner: false,
    ),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
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
              offset: Offset(2, 8))
        ]),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                      maxRadius: 250,
                      child: Image.asset('assets/images/barber.png')),

                  SizedBox(
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
              width: 350,
              height: 450,
              decoration: BoxDecoration(
                  color: Colors.brown.shade900,
                  borderRadius: BorderRadius.circular(15)),
              // color: Colors.amber,
              child: Padding(
                  padding: EdgeInsets.all(3),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 35,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              'Blumenau - SC',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Roboto Mono'),
                            )
                          ],
                        ),
                      ),
                      //CONTAINER DO MEIO
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            SizedBox(
                              width: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Agendar horário',
                                      style: TextStyle(
                                          shadows: [
                                            Shadow(
                                                offset: Offset(0, 2),
                                                blurRadius: 3,
                                                color: Colors.black)
                                          ],
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19)),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Escolha o  barbeiro e agende o seu horário',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),

                        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 0, 255, 0),
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 1,
                                spreadRadius: 1,
                                color: Color.fromARGB(255, 101, 183, 104),
                                // offset: Offset(2, 8))
                              )
                            ]),
                        // color: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.phone,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            SizedBox(
                              width: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Serviços',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19)),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Escolha o serviço de barbearia',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),

                        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 78, 92, 179),
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 3,
                                color: Color.fromARGB(255, 78, 92, 179),
                                // offset: Offset(2, 8))
                              )
                            ]),
                        // color: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Icon(
                              Icons.email_outlined,
                              size: 50,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            SizedBox(
                              width: 150,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Contato',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 19)),
                                  SizedBox(height: 10),
                                  Text(
                                    'Entre em contato com o barbeiro',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),

                        margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 239, 131, 8),
                            // color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 3,
                                color: Color.fromARGB(255, 239, 131, 8),
                                // offset: Offset(2, 8))
                              )
                            ]),
                        // color: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      )
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
