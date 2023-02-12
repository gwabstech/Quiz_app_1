import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5.5),
      
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 28, color: Colors.brown),
        textAlign: TextAlign.center,
      ),
    );
  }
}
