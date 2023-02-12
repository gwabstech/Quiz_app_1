 import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget{
  final  List<Map<String, Object>> questions;
  final  VoidCallback answerQuestion;
  final int qIndex;

  Quiz(this.questions, this.answerQuestion,this.qIndex );
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Question(questions[qIndex]['questionText'] as String),
        ...(questions[qIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(
              selectHandler: answerQuestion, answerText: answer);
        }).toList()
      ],
    );
  }
  
}