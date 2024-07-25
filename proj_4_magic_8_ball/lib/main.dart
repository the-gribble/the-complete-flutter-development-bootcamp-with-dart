import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui' as ui;

void main() => runApp(
      const MaterialApp(
        home: BallPage(),
      ),
    );

// Base App Page - Fixed State
class BallPage extends StatelessWidget {
  const BallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          'Ask Me Anything!',
          style: TextStyle(
            // color: Colors.white,
            fontWeight: FontWeight.bold,
            foreground: Paint()
              ..shader = ui.Gradient.linear(
                const Offset(0, 20),
                const Offset(150, 20),
                <Color>[
                  Colors.greenAccent,
                  Colors.yellow,
                ],
              ),
          ),
        )),
      ),
      body: const Ball(),
    );
  }
}

// Inner Dynamic Content Widget
class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(4) + 1;
            print('Ball Number: $ballNumber');
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
