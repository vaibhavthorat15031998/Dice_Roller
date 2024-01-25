//import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

void main() {
  runApp(
          MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        body: GradientContainer(Colors.deepPurple,Colors.green),
      ),
    ),
  );
}

//test
