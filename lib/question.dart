import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      color: Colors.orange,
      padding: EdgeInsets.all(15),
      child: Text(
        questionText, 
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),);
  }
}