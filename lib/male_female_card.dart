import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MaleFemaleCard extends StatelessWidget {
  MaleFemaleCard({this.text, this.onPresed, this.tog, this.icon});

  final bool tog;
  final Function onPresed;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        color: Color(0xff424242),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.purple,
              size: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    icon: Icon(
                      (tog == true)
                          ? Icons.check_box
                          : Icons.check_box_outline_blank,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: onPresed),
                Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
