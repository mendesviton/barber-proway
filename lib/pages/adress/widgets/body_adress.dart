import 'package:flutter/material.dart';
import 'plataform_button.dart';

class BodyAdress extends StatelessWidget {
  const BodyAdress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 70,
              bottom: 80,
            ),
            child: Image.asset(
              "assets/images/logo.png",
              scale: 3,
            ),
          ),
          const Text(
            'Alces Barbearia',
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Rua Erich Steinbach 22, Sala 2',
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            'Bairro Itoupava Seca',
            style: TextStyle(color: Colors.white),
          ),
          const Text(
            'Blumenau - SC',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 90,
          ),
          const Text(
            'Telefone',
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            '(47) 98789-4232',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              PlataformButton(
                plataform: "Maps",
              ),
              SizedBox(
                width: 10,
              ),
              PlataformButton(
                plataform: "Wize",
              ),
              SizedBox(
                width: 10,
              ),
              PlataformButton(
                plataform: "Uber",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
