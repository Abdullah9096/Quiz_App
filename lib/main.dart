import 'package:Q_A/quiz.dart';
import 'package:Q_A/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppstate();
  }
}

class _MyAppstate extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'Red', 'score': 10},
        {'text': 'Blue', 'score': 11},
        {'text': 'Green', 'score': 1},
        {'text': 'black', 'score': 9},
      ],
    },
    {
      'questionText': 'what\'s your favorite sport?',
      'answers': [
        {'text': 'Football', 'score': 2},
        {'text': 'Bascketball', 'score': 14},
        {'text': 'Vollyball', 'score': 8},
        {'text': 'Swimming', 'score': 23},
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Tiger', 'score': 1},
        {'text': 'chita', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _question.length) {
      print('we have more questions!');
    }
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Q_A'),
        backgroundColor: Colors.orange,
      ),
      body: _questionIndex < _question.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              question: _question,
              questionIndex: _questionIndex,
            )
          : Result(_resetQuiz, _totalScore),
    ));
  }
}
/*

*/
