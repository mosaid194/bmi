import 'package:flutter/material.dart';
import 'reuseable_buttom.dart';
class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Color(0xff3D3D3D), ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "18",
                style: TextStyle(
                    fontSize: 80,
                    color: Color(0xffB3B3B3),
                    fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              ),
              Text(
                "normal",
                style: TextStyle(fontSize: 40, color:Colors.purple,),
                textAlign: TextAlign.center,
              ),
              ReuseableButton(text: "normal",onpress: (){
                Navigator.pop(context);
              },),
            ],
          ),
        ),
      ),
    );
  }
}


