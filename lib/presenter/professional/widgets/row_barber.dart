import 'package:flutter/material.dart';

class RowBarber extends StatefulWidget {
  @override
  State<RowBarber> createState() => _RowBarberState();
  final String name;
  final String photoProfile;

  const RowBarber({
    Key? key,
    required this.name,
    required this.photoProfile,
  }) : super(key: key);
}

class _RowBarberState extends State<RowBarber> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: InkWell(
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 157, 10),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: CircleAvatar(
                    backgroundImage: Image.asset(widget.photoProfile).image,
                    radius: 25,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    widget.name,
                    style: const TextStyle(
                      shadows: [
                        Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 3,
                          color: Color.fromARGB(255, 77, 67, 10),
                        )
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
      ),
    );
  }
}
