import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        color: Colors.blue,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.orange,
    );
  }
}
