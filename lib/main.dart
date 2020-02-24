import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List _questions = <Map>[
    {
      "questionText": "What's your favorite color?",
      "answers": ["Black", "Red", "Green", "White"],
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": ["Rabbit", "Snake", "Elephant", "Lion"],
    },
    {
      "questionText": "Who's your favorite instructor?",
      "answers": ["Parsa", "Corey", "Colt", "Max"],
    },
  ];

  int _indexOfQuestions = 0;

  void _answerQuestion() {
    // if (_indexOfQuestions < questions.length) {}
    setState(() {
      _indexOfQuestions += 1;
    });
    print(_indexOfQuestions);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: _indexOfQuestions < _questions.length
            ? Quiz(
                questions: _questions,
                indexOfQuestions: _indexOfQuestions,
                answerQuestion: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
