import 'package:flutter/material.dart';

import 'header_home.dart';
import 'option_home.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      decoration: BoxDecoration(color: Colors.brown[800], boxShadow: [
        BoxShadow(
          blurRadius: 30,
          spreadRadius: 10,
          color: Colors.blueGrey.shade50,
          offset: const Offset(2, 8),
        ),
      ]),
      child: Column(
        children: const [
          HeaderHome(),
          OptionHome(),
        ],
      ),
    );
  }
}
