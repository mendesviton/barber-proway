import 'package:flutter/material.dart';

class EnderecoPage extends StatelessWidget {
  const EnderecoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(150, 150, 91, 51),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text(
          'Endereço',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Alces Barbearia',
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
            ),
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
              height: 60,
            ),
            const Text(
              'Telefone:',
              style:
                  TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
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
              children: [
                Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Maps',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Waze',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                Container(
                  height: 25,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        'Uber',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
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
