import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'I Am Poor',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: const Center(
        child: Image(
          image: AssetImage('images/coal.jpg'),
        ),
      ),
    ),
  ));
}
