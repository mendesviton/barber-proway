import 'package:flutter/material.dart';

import 'card_services.dart';

class BodyServices extends StatelessWidget {
  const BodyServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: const [
            CardServices(
              type: "Corte Cabelo",
              time: "30 min",
              value: "35,00",
            ),
            CardServices(
              type: "Barba",
              time: "30 min",
              value: "30,00",
            ),
            CardServices(
              type: "Relaxamento",
              time: "15 min",
              value: "30,00",
            ),
            CardServices(
              type: "Limpeza de Ouvido",
              time: "15 min",
              value: "30,00",
            ),
            CardServices(
              type: "Platinado",
              time: "1 hora",
              value: "180,00",
            ),
            CardServices(
              type: "Reconstrução Capilar",
              time: "15 min",
              value: "30,00",
            ),
          ],
        ),
      ),
    );
  }
}
