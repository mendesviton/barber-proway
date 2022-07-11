import 'package:flutter/material.dart';

class EnderecoPage extends StatelessWidget {
  const EnderecoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.brown.shade700,
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
          'Endereço',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 80),
              child: Image.asset(
                "images/logo.png",
                scale: 3,
              ),
            ),
            const Text(
              'Alces Barbearia',
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,fontSize: 20),
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
              style:
                  TextStyle(color: Colors.orange, fontWeight: FontWeight.bold,fontSize: 20),
            ),
            const SizedBox(height: 8,),
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
              children: [
                Container(
                  height: 27,
                  width: 53,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.orange),
                      color: Colors.brown.shade700,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Maps',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 27,
                  width: 53,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.orange),
                      color: Colors.brown.shade700,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Waze',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 27,
                  width: 53,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.orange),
                    color: Colors.brown.shade700,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Uber',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
