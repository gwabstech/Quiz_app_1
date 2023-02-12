import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  final String answerText;
  const Answer(
      {super.key, required this.selectHandler, required this.answerText});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: selectHandler,
          style: ButtonStyle(
              // foregroundColor: MaterialStateProperty.all(Colors.brown),
              backgroundColor: MaterialStateProperty.all(Colors.deepOrange)),
          child: Text(answerText.toString()),
        ),
      ),
    );
  }
}
