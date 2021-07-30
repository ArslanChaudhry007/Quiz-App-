import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get TotalResult {
    String totalResult;

    if (totalScore < 14) {
      totalResult = 'You are too bad!';
    } else if (totalScore < 25) {
      totalResult = 'You are awesome and innocent!';
    } else {
      totalResult = 'You are strange!';
    }

    return totalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            TotalResult,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            textColor: Colors.blue,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
