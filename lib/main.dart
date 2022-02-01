// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: splashScreen(),
  ));
}

class splashScreen extends StatefulWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 2500));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => RandomColor()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 250, 0, 0),
            child: Center(
              child: Text(
                'COLOR',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Center(
              child: Text(
                'GENERATOR',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.w300,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 300, 0, 0),
            child: Center(
              child: Text(
                'Made by Saleemi',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
