import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[400],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text("Ask Me Anything"),
          ),
        ),
        body: Magic8Ball(),
      ),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  Magic8Ball({Key key}) : super(key: key);

  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int state = 1;

  void askMe() {
    setState(() {
      state = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: askMe,
        child: Center(
          child: Image.asset('images/ball$state.png'),
        ),
      ),
    );
  }
}
