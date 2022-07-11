import 'package:flutter/material.dart';
import 'widgets/card_services.dart';

class CutsPage extends StatelessWidget {
  const CutsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromARGB(150, 150, 91, 51),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios
          ),
          color: Colors.black,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.amber,
        title: const Text(
          'Serviços',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
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
                Services(
                  type: "Corte Cabelo",
                  time: "30 min",
                  value: "35,00",
                ),
                Services(
                  type: "Barba",
                  time: "30 min",
                  value: "30,00",
                ),
                Services(
                  type: "Relaxamento",
                  time: "15 min",
                  value: "30,00",
                ),
                Services(
                  type: "Limpeza de Ouvido",
                  time: "15 min",
                  value: "30,00",
                ),
                Services(
                  type: "Platinado",
                  time: "1 hora",
                  value: "180,00",
                ),
                Services(
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
