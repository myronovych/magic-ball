import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey.shade200,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: Text(
              'Magic 8 Ball',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SafeArea(
            child: MagicBall(),
          ),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  var numberOfAnswer = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            numberOfAnswer = Random().nextInt(5) + 1;
          });
        },
        child: Image.asset('images/ball$numberOfAnswer.png'),
      ),
    );
  }
}
