import 'package:flutter/material.dart';
import 'widgets/body_professional.dart';

class ChangeProfessional extends StatefulWidget {
  const ChangeProfessional({Key? key}) : super(key: key);

  @override
  State<ChangeProfessional> createState() => _ChangeProfessionalState();
}

class _ChangeProfessionalState extends State<ChangeProfessional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Escolha o profissional',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const BodyProfessional(),
    );
  }
}