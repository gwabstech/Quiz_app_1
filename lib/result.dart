import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;

  const Result(this.score, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You did it here is your score $score',
        style: TextStyle(fontSize: 36),
        textAlign: TextAlign.center,
      ),
    );
  }
}
