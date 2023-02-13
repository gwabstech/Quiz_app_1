import 'package:app1/result.dart';
import 'package:flutter/material.dart';
import 'package:app1/quiz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _scores = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your name',
      'options': ['Abubakar', 'Abdullahi', 'Aliyu', 'Gwabare'],
      'answer': 'Abubakar'
    },
    {
      'questionText': 'How old am i now ?',
      'options': ["25", "30", "26", "29"],
      'answer': '26'
    },
    {
      'questionText': 'Whats my professional name',
      'options': ['Kopat', 'Gwabstech Solutions', 'Aliyu', 'Gwabare'],
      'answer': 'Gwabstech Solutions'
    },
  ];

  void _answerQuestions(String answer) {
    if (answer == _questions[_questionIndex]['answer']) {
      _scores += 10;
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void resetQuiz() {
    setState(() {
      _scores = 0;
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Golden Odds"),
          ),
          body: _questionIndex < _questions.length
              ? Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(10.5),
                  child: Quiz(_questions, _answerQuestions, _questionIndex))
              : Result(_scores, resetQuiz)),
    );
  }
}
