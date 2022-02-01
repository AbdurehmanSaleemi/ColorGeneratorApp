// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'dart:math' as math;

Container newContainer1 = Container(child: colorCard(Colors.white30));
Container newContainer2 = Container(
  child: colorCard(
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0)),
);
Container newContainer3 = Container(
  child: colorCard(
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0)),
);
Container newContainer4 = Container(
  child: colorCard(
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0)),
);
Container newContainer5 = Container(
  child: colorCard(
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0)),
);
Container newContainer6 = Container(
  child: colorCard(
      Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0)),
);

Widget colorCard(color) {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                height: 100,
                width: 200,
                color: color,
              ),
            )
          ],
        ),
      ],
    ),
  );
}

class RandomColor extends StatefulWidget {
  const RandomColor({Key? key}) : super(key: key);
  @override
  _RandomColorState createState() => _RandomColorState();
}

class _RandomColorState extends State<RandomColor> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 24, 0, 0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Text(
                'COLOR GENERATOR',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.purple[100],
                ),
              ),
            ),
            newContainer1,
            newContainer2,
            newContainer3,
            newContainer4,
            newContainer5,
            newContainer6,
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        newContainer1 = Container(
                          child: colorCard(Color(
                                  (math.Random().nextDouble() * 0xFFFFFF)
                                      .toInt())
                              .withOpacity(1.0)),
                        );
                        newContainer2 = Container(
                          child: colorCard(Color(
                                  (math.Random().nextDouble() * 0xFFFFFF)
                                      .toInt())
                              .withOpacity(1.0)),
                        );
                        newContainer3 = Container(
                          child: colorCard(Color(
                                  (math.Random().nextDouble() * 0xFFFFFF)
                                      .toInt())
                              .withOpacity(1.0)),
                        );
                        newContainer4 = Container(
                          child: colorCard(Color(
                                  (math.Random().nextDouble() * 0xFFFFFF)
                                      .toInt())
                              .withOpacity(1.0)),
                        );
                        newContainer5 = Container(
                          child: colorCard(Color(
                                  (math.Random().nextDouble() * 0xFFFFFF)
                                      .toInt())
                              .withOpacity(1.0)),
                        );
                      });
                    },
                    child: Text(
                      'GENERATE',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(33.6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
