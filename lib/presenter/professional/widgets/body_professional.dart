import 'package:flutter/material.dart';
import 'row_barber.dart';

class BodyProfessional extends StatelessWidget {
  const BodyProfessional({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.brown.shade700,
      ),
      child: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: RowBarber(
              name: 'Lucas',
              photoProfile: 'assets/images/profile2.webp',
            ),
          ),
          RowBarber(
            name: 'Felipe',
            photoProfile: 'assets/images/profile3.jpg',
          ),
          RowBarber(
            name: 'Joaquina',
            photoProfile: 'assets/images/profile4.jpg',
          ),
          RowBarber(
            name: 'Vinícius',
            photoProfile: 'assets/images/profile5.webp',
          ),
          RowBarber(
            name: 'Adriano',
            photoProfile: 'assets/images/profile6.jpg',
          ),
          RowBarber(
            name: 'Maria',
            photoProfile: 'assets/images/profile7.png',
          ),
          RowBarber(
            name: 'Lucia',
            photoProfile: 'assets/images/profile8.jpg',
          ),
          RowBarber(
            name: 'Mclovin',
            photoProfile: 'assets/images/profile9.jpg',
          ),
          RowBarber(
            name: 'Vitor',
            photoProfile: 'assets/images/profile10.jpg',
          ),
        ],
      ),
    );
  }
}
