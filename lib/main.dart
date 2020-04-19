import 'package:flutter/material.dart';
import 'package:flutterapp/quiz.dart';
import 'package:flutterapp/result.dart';

void main() {
  runApp(MyClass());
}

class MyClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyClassState();
  }
}

class _MyClassState extends State<MyClass> {
  final _questions = [
    {
      'questionText': 'what\'s your color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'questionText': 'Whats\'s your animal?',
      'answers': [
        {'text': 'Dog', 'score': 10},
        {'text': 'Cat', 'score': 5},
        {'text': 'Elephant', 'score': 1},
      ],
    },
    {
      'questionText': 'Whats\'s your food?',
      'answers': [
        {'text': 'Panipury', 'score': 10},
        {'text': 'Dabeli', 'score': 5},
        {'text': 'Vadapav', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    //_totalScore = _totalScore + score;

    //First calculate sum and then store value
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Map

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
          ),
          body: _questionIndex < _questions.length
              // Spliting Code
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              //Column(
              //     children: [

              // Static....
              // Question(questions[_questionIndex]),
              // Answer(_answerQuestion),
              // Answer(_answerQuestion),
              // Answer(_answerQuestion)

              //       // Dynamic....
              //       Question(_questions[_questionIndex]['questionText']),
              //       ...(_questions[_questionIndex]['answers'] as List<String>)
              //           .map((answer) {
              //         return Answer(_answerQuestion, answer);
              //       }).toList()
              //     ],
              //   )

              // Spliting Code
              : Result(_totalScore, _resetQuiz)
          // Center(
          //     child: Text('You did it!'),
          //   ),
          ),
    );
  }
}
