// ignore_for_file: use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import './Question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final questionIndex;
  const Quiz(
      {required this.answerQuestion,
      required this.questionIndex,
      required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Question(questions[questionIndex]['QuestionText'] as String),
        ...(questions[questionIndex]['AnswerText'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(answer['Score']), answer['Text'] as String);
        }).toList()
      ],
    );
  }
}
