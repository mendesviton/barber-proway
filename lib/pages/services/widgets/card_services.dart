import 'package:flutter/material.dart';
import '../services_page.dart';

class CutsPage extends StatelessWidget {
  const CutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(150, 150, 91, 51),
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.all(90),
          child: Text("Serviços disponíveis"),
        ),
        backgroundColor: const Color.fromARGB(255, 34, 25, 19),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: size.height,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Servies(
                  type: "Corte Cabelo",
                  time: "30 min",
                  value: "35,00",
                ),
                Servies(
                  type: "Barba",
                  time: "30 min",
                  value: "30,00",
                ),
                Servies(
                  type: "Relaxamento",
                  time: "15 min",
                  value: "30,00",
                ),
                Servies(
                  type: "Limpeza de Ouvido",
                  time: "15 min",
                  value: "30,00",
                ),
                Servies(
                  type: "Platinado",
                  time: "1 hora",
                  value: "180,00",
                ),
                Servies(
                  type: "Reconstrução Capilar",
                  time: "15 min",
                  value: "30,00",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
