
import 'package:flutter/material.dart';

import '../../page_calendar/calendar_page.dart';
import '../../page_endereco/endereco.dart';
import '../../services/services_page.dart';
import 'header_container.dart';
import 'option_container.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: size.width,
      height: size.height,
      decoration: BoxDecoration(color: Colors.brown[800], boxShadow: [
        //efeito de profundidade
        BoxShadow(
            blurRadius: 30,
            spreadRadius: 10,
            color: Colors.blueGrey.shade50,
            offset: const Offset(2, 8))
      ]),
      child: Column(
        children:const [
          HeaderContainer(),
          OptionContainer()
        ],
      ),
    );
  }
}
