// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final VoidCallback resetQuiz;
  Result(this.resultScore, this.resetQuiz);
  String get resultPhrase {
    var resultText;
    if (resultScore <= 8) {
      resultText = 'You are Awesome and Innocent';
    } else if (resultScore <= 12) {
      resultText = 'You are Good';
    } else if (resultScore <= 18) {
      resultText = 'You are a Stranger';
    } else {
      resultText = 'You are Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
              onPressed: resetQuiz,
              child: Text(
                'Reset',
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              )),
        ],
      ),
    );
  }
}
