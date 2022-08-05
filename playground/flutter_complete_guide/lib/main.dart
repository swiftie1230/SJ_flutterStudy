import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

/*
void main() {
  runApp(MyApp());
}
*/

void main() => runApp(MyApp());

// This class can be recreated, when the external data changes
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw MyAppState();
    return _MyAppState();
  }
}

// Persistent, Attached to the UI, NOT Recreated
// '_' turns public class to private class now.
class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 8},
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 2},
      ],
    },
    {
      'questionText': 'What\'s your favorite instructor',
      'answers': [
        {'text': 'Max', 'score': 5},
        {'text': 'Sera', 'score': 1},
        {'text': 'Alice', 'score': 3},
        {'text': 'Kevin', 'score': 10},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
