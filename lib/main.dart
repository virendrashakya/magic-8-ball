import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: new BallPage(),
      ),
    );


class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: Text('Ask Me Anything'),
      ),
      body: new Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  // const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  void answerTheText() {
    setState(() => {
      ballNumber = Random().nextInt(5)+1
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade500,
      child: Center(
          child: FlatButton(
            onPressed: () {
              answerTheText();
            },
            child: Image(
              image: AssetImage('images/ball$ballNumber.png'),
            ),
          )
      ),
    );
  }
}
