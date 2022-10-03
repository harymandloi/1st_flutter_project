// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, deprecated_member_use, duplicate_ignore, avoid_print, unused_local_variable, must_be_immutable, unused_import, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import './Question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'QuestionText': "What's your favourite colour ??",
      'AnswerText': [
        {'Text': 'Black', 'Score': 10},
        {'Text': 'Orange', 'Score': 6},
        {'Text': 'Green', 'Score': 3},
        {'Text': 'Yellow', 'Score': 1}
      ]
    },
    {
      'QuestionText': "What's your favourite animal ??",
      'AnswerText': [
        {'Text': 'Tiger', 'Score': 10},
        {'Text': 'Lion', 'Score': 6},
        {'Text': 'Elephant', 'Score': 3},
        {'Text': 'Dog', 'Score': 1}
      ]
    },
    {
      'QuestionText': "Who's your favourite Instructor ??",
      'AnswerText': [
        {'Text': 'AkhileshSir', 'Score': 3},
        {'Text': 'Vidhyanand', 'Score': 6},
        {'Text': 'YadavSir', 'Score': 6},
        {'Text': 'Hariom', 'Score': 1}
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
      if (_questionIndex < _questions.length) {
        print(_questionIndex);
      } else {
        print('No More Questions...');
      }
    });
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('MyApp')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
