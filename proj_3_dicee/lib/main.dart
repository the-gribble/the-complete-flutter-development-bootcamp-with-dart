import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 6;

  void randmiseDice() {
    setState(() {
      // setState() is required to repaint the UI, else the var will be changed but not shown to the user.
      // This method marks everywhere where this var is used to "dirty". Dirty widgets are (only) are redrawn on rebuild
      leftDiceNo = Random().nextInt(6) + 1;
      rightDiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDiceNo.png'),
              onPressed: () {
                print('Left button pressed.');
                randmiseDice();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDiceNo.png'),
              onPressed: () {
                print('Right button pressed.');
                randmiseDice();
              },
            ),
          ),
        ],
      ),
    );
  }
}
