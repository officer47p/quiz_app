import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List questions;
  final int indexOfQuestions;

  Quiz({
    @required this.answerQuestion,
    @required this.questions,
    @required this.indexOfQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[indexOfQuestions]["questionText"]),
        ...(questions[indexOfQuestions]["answers"] as List<String>)
            .map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}
