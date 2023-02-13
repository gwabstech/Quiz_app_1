import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  const Result(this.score, {super.key});

  String get finishText {
    var resultText = 'You did it here is your score $score';
    if (score < 30) {
      resultText = 'Poor run your score is $score';
    }
    return resultText;
  }

// getters

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        finishText,
        style: TextStyle(fontSize: 36),
        textAlign: TextAlign.center,
      ),
    );
  }
}
