
import 'package:flutter/material.dart';

import '../../page_calendar/calendar_page.dart';
import '../../page_endereco/endereco.dart';
import '../../services/services_page.dart';



class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            // radius: 50,
            backgroundColor: Colors.orange,
            maxRadius: 90,
            child: Image.asset('assets/images/logo.png'),
            
          ),

          const SizedBox(
            width: 10,
          ),
          // Text('AppBarber',
          //     style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 17,
          //         fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
