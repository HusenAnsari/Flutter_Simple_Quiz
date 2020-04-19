import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhase {
    String resultText;
    if (resultScore <= 10) {
      resultText = "you are great";
    } else if (resultScore <= 20) {
      resultText = "you are innocent";
    } else if (resultScore <= 40) {
      resultText = "you are strange";
    } else {
      resultText = 'you are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            textColor: Colors.blue,
            child: Text('Restart Quiz'),
            onPressed: resetQuiz,
          ),
        ],
      ),
    );
  }
}
