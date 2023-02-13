import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final VoidCallback resrtQuiz;

  const Result(this.score, this.resrtQuiz, {super.key});

  String get finishText {
    var resultText = 'You did it here is your score $score';
    if (score < 30) {
      resultText = 'Poor run, your score is $score';
    }
    return resultText;
  }

// getters

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            finishText,
            style: const TextStyle(fontSize: 36),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
              onPressed: resrtQuiz,
              style: ButtonStyle(
                  // foregroundColor: MaterialStateProperty.all(Colors.brown),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepOrange)),
              child: const Text('Reset The Quiz')),
        ],
      ),
    );
  }
}
