import 'package:flutter/material.dart'

class Answer extends StatelessWidget {
   final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.deepOrange,
        textColor: Colors.black,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
