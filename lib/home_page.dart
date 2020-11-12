import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lec11navigator/reuseable_buttom.dart';
import 'reusable_card.dart';
import 'male_female_card.dart';
import 'package:flutter/material.dart';
import 'calculate.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 170;
  int age = 18;
  int weight = 50;
  bool toggle = true;

  void decrise(int num) {
    num--;
    if (num < 0) {
      num = 0;
    }
  }

  void increse(int num) {
    num++;

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff303030),
        appBar: AppBar(
          title: Text(
            "BMI",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff191919),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    ReuseAbleCard(
                      text: "Age (in year)",
                      value: age.toString(),
                      decrseFun: () {
                        setState(() {
                          age--;
                          if (age < 0) {
                            age = 0;
                          }
                        });
                      },
                      incrseFun: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                    ReuseAbleCard(
                      text: "Weight (KG)",
                      value: weight.toString(),
                      decrseFun: () {
                        setState(() {
                          weight--;
                          if (weight < 0) {
                            weight = 0;
                          }
                        });

                      },
                      incrseFun: () {
                        setState(() {
                          weight++;
                        });

                      },
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Card(
                  color: Color(0xff424242),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffB1B1B1),
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            (height.toStringAsFixed(0)).toString(),
                            style: TextStyle(
                                fontSize: 45,
                                color: Color(0xffB1B1B1),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "cm",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color(0xffB1B1B1),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Slider(
                          inactiveColor: Colors.white,
                          activeColor: Colors.purple,
                          min: 150,
                          max: 195,
                          value: height,
                          onChanged: (val) {
                            setState(() {
                              height = val;
                            });
                          })
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    MaleFemaleCard(
                      text: "Male",
                      icon: FontAwesomeIcons.mars,
                      onPresed: () {
                        setState(() {
                          toggle = !toggle;
                        });
                      },
                      tog: toggle,
                    ),
                    MaleFemaleCard(
                      text: "Female",
                      icon: FontAwesomeIcons.venus,
                      onPresed: () {
                        setState(() {
                          toggle = !toggle;
                        });
                      },
                      tog: !toggle,
                    ),
                  ],
                ),
              ),
              // Container(
              //   margin: EdgeInsets.all(10),
              //   height: 100,
              //   child: RaisedButton(
              //     onPressed: () {},
              //     child: Text(
              //       "Calcoletor",
              //       style: TextStyle(fontSize: 30, color: Colors.purple),
              //     ),
              //   ),
              // ),
              ReuseableButton(text: "calculate", onpress: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>ResultPage()));
              },)

            ],
          ),
        ),
      ),
    );
  }
}
