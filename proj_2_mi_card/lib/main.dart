import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Don't forget that Widget quick-docs is accessible using control-j on macos (or ctrl-q on windows)

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mi Card App',
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                child: Image(image: AssetImage('images/memoji.PNG')),
              ),
              Text(
                'Sam Gribble',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'VarelaRound',
                  color: Colors.white,
                  fontSize: 38.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              Text(
                'Flutter Developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'SourceSans3',
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 200.0,
                child: Divider(),
              ),
              Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.call,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+27 72 123 4567',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal,
                        fontFamily: 'SourceSans3',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              Card(
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'name@domain.com',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.teal,
                        fontFamily: 'SourceSans3',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
