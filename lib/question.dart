import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  // Positional argument
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    var container = Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      ),
    );
    return container;
  }
}
