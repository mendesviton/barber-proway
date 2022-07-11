import 'package:flutter/material.dart';

class PlataformButton extends StatelessWidget {
  const PlataformButton({
    Key? key,
    required this.plataform,
  }) : super(key: key);

  final String plataform;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 53,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.orange,
        ),
        color: Colors.brown.shade700,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            plataform,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
