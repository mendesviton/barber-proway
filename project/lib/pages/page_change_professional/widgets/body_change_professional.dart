import 'package:flutter/material.dart';

class ChangeProfessional extends StatelessWidget {
  const ChangeProfessional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Escolha o profissional:',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.amber,
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(150, 150, 91, 51),
        ),
        child: Column(
          children: const [
            SizedBox(
              height: 40,
            ),
            RowBarber(),
            RowBarber(),
            RowBarber(),
            RowBarber(),
            RowBarber(),
            RowBarber(),
          ],
        ),
      ),
    );
  }
}

class RowBarber extends StatelessWidget {
  const RowBarber({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
        image: const DecorationImage(
          image: NetworkImage('assets/images/fundo.jpg'),
          fit: BoxFit.fill,
        ),
        color: Color.fromARGB(255, 255, 157, 10),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 0, 0, 0),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: CircleAvatar(
                backgroundImage: Image.network(
                        'https://thumbs.dreamstime.com/b/perfil-8004175.jpg')
                    .image,
                    
                radius: 25,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Cristiano',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
