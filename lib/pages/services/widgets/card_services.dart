import 'package:flutter/material.dart';

import '../../page_calendar/calendar_page.dart';
import '../../page_change_professional/widgets/body_change_professional.dart';

class Services extends StatelessWidget {
  final String type;
  final String time;
  final String value;

  const Services({
    Key? key,
    required this.type,
    required this.time,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color _backgroundColor = Colors.transparent;

    return InkWell(
      onTap: () {
        _backgroundColor = Colors.grey;
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const ChangeProfessional()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: _backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    type,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "Tempo: $time",
                    style: const TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.bold,
                      color: Color.fromARGB(221, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Text(
                "R\$ $value",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
