import 'package:flutter/material.dart';

class HeaderHome extends StatelessWidget {
  const HeaderHome({
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
        ],
      ),
    );
  }
}
