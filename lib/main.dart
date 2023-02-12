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

  final _questions = const [
    {
      'questionText': 'What\'s your name',
      'answers': ['Abubakar', 'Abdullahi', 'Aliyu', 'Gwabare']
    },
    {
      'questionText': 'How old am i now ?',
      'answers': ["25", "30", "26", "29"]
    },
    {
      'questionText': 'Whats my professional name',
      'answers': ['Kopat', 'Gwabstech Solutions', 'Aliyu', 'Gwabare']
    },
  ];

  void _answerQuestions() {

      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      if (_questionIndex < _questions.length){
        print('We  have  question.....?');
      }else{
        print('We dont have any ');
       // _questionIndex = 0;
      }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Golden Odds"),
        ),
        body: _questionIndex < _questions.length? Container(
          width: double.infinity,
          margin: const EdgeInsets.all(10.5),
          child: Quiz(_questions,_answerQuestions,_questionIndex)
        ): const Center(
          child: Text('You did it'),
        ),
      ),
    );
  }
}
