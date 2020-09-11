import 'package:flutter/material.dart';


import 'package:foody/src/screens/home.dart';

void main() {
  runApp(Foody());
}

class Foody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Home(),
    );
  }
}

