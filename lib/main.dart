import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
    });

    _totalScore += score;

    print('question index = $_questionIndex');
    print('_totalScore = $_totalScore');
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': "What\'s your favorite animal?",
        'answers': [
          {"text": 'Rabit', "score": 10},
          {"text": 'Snake', "score": 2},
          {"text": 'Lion', "score": 5},
          {"text": 'Elephant', "score": 7}
        ],
      },
      {
        'questionText': "What\'s your favorite color?",
        'answers': [
          {"text": 'Black', "score": 10},
          {"text": 'White', "score": 5},
          {"text": 'Red', "score": 2},
          {"text": 'Green', "score": 7}
        ],
      },
      {
        'questionText': "Which one is your favorite season?",
        'answers': [
          {"text": 'Peaky Blinders', "score": 7},
          {"text": 'Game of thrones', "score": 6},
          {"text": 'Breaking Bad', "score": 9},
          {"text": 'Friends', "score": 10}
        ],
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
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
