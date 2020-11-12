import 'package:flutter/material.dart';

class ReuseableButton extends StatelessWidget {
  ReuseableButton({this.text, this.onpress});

  final String text;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      color: Colors.white,
      child: RaisedButton(
       // color: Colors.white,
        onPressed: onpress,
        child: Text(
          text,
          style: TextStyle(fontSize: 30, color: Colors.purple),
        ),
      ),
    );
  }
}
