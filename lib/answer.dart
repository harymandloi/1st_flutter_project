// ignore_for_file: use_key_in_widget_constructors, deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;
  const Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(8.0),
      child: RaisedButton(
        color: Colors.blue,
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
