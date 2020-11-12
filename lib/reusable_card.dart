import 'package:flutter/material.dart';
class ReuseAbleCard extends StatelessWidget {
  ReuseAbleCard ({this.text,this.value,this.decrseFun,this.incrseFun});
  final String text;
  final String value ;
  final Function incrseFun;
  final Function decrseFun;
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Card(
        color: Color(0xff424242),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffB1B1B1),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                value,
                style: TextStyle(
                    fontSize: 40,
                    color: Color(0xffB1B1B1),
                    fontWeight: FontWeight.bold),
              ),
              Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    child: InkWell(
                      onTap:decrseFun,
                      child: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    radius: 30,
                    backgroundColor: Color(0xff616161),
                  ),
                  CircleAvatar(
                    child: InkWell(
                      onTap: incrseFun,
                      child: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                    radius: 30,
                    backgroundColor: Color(0xff616161),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}
