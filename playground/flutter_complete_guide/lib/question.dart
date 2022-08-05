// TASK : output a question in a nicer way !

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // final -> this value will never change, change never count
  final String questionText;

  // positioning argument
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      //gets as much size, as much width that you can get
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
