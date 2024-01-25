import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  StyledText( this.text,{super.key});

final  String text;
  @override
  Widget build(BuildContext context) {
    return const  Text(
      'Hello world!',
      style: TextStyle(
          color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
    );
  }
}
