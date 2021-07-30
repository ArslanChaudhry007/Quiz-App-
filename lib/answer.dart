import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedAnswerHandler;
  final String answerText;

  Answer(this.selectedAnswerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20.0, right: 20.0),
      child: RaisedButton(
        child: Text(answerText),
        color: Colors.blue[200],
        textColor: Colors.white,
        onPressed: selectedAnswerHandler,
      ),
    );
  }
}
