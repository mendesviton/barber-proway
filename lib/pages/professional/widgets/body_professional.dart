import 'package:flutter/material.dart';

class ChangeProfessional extends StatelessWidget {
  const ChangeProfessional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        backgroundColor: Colors.orange,
        title: const Text(
          'Escolha o profissional',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.brown.shade700,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 157, 10),
            borderRadius: BorderRadius.circular(10),
            
          ),
          child: Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                    shadows: [
                      Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 3,
                          color: Color.fromARGB(255, 77, 67, 10))
                    ],
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}