import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
      width: double.infinity,
      margin: EdgeInsets.all(50),
    );
  }
}
