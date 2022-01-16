import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resetHandler, this.resultScore);
  String get resultPhase {
    String resString;
    if (resultScore <= 20) {
      resString = 'oobs...you are bad';
    } else if (resultScore <= 40) {
      resString = 'you are in a middle level!';
    } else if (resultScore <= 60) {
      resString = 'it\'s nice.. you are good';
    } else {
      resString = 'you are very good';
    }
    return resString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
            color: Colors.red,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
