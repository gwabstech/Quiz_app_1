import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int qIndex;

  const Quiz(this.questions, this.answerQuestion, this.qIndex, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[qIndex]['questionText'] as String),
        ...(questions[qIndex]['options'] as List<String>).map((options) {
          return Answer(
              selectHandler: () => answerQuestion(options),
              answerText: options);
        }).toList()
      ],
    );
  }
}
