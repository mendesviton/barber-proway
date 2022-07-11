
import 'package:flutter/material.dart';

import '../../services/services_page.dart';

class NavigationButton extends StatelessWidget {
  
  final String title;
  final String description;
  
  
  const NavigationButton({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.blue.withOpacity(0.4),
      splashColor: Colors.green.withOpacity(0.5),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ServicesPage(),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Row(
          children: [
            Icon(
              shadows: [
                Shadow(
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  color: Color.fromARGB(255, 84, 72, 9),
                )
              ],
              Icons.phone,
              size: 50,
              color: Colors.white,
            ),
            const SizedBox(
              width: 30,
            ),
            SizedBox(
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(title,
                      style: const TextStyle(
                          shadows: [
                            Shadow(
                              offset: Offset(0, 2),
                              blurRadius: 3,
                              color: Color.fromARGB(255, 78, 74, 70),
                            )
                          ],
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19)),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    description,
                    style: const TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(0, 2),
                          blurRadius: 3,
                          color: Color.fromARGB(255, 78, 74, 70),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
