import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';

void main() {
  runApp(
      const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        body: GradientContainer( Color.fromARGB(255, 255, 0, 225),Color.fromARGB(255, 0, 244, 203)
      ),
    ),
  ),
  );
}


