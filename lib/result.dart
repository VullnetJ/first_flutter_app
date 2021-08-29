import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >=12) {
      resultText = 'You are awesome';
    } else if (resultScore >= 8){
      resultText ='Pretty good';
    } else if (resultScore >=5){
     resultText = 'You are weird';
    } else {
      resultText = 'You are not normal at all';
    } 
  return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Column(
              children: <Widget> [
                Text (
                  resultPhrase, 
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                FlatButton(child: Text('Restart Quiz'), 
                textColor: Colors.orange,
                onPressed: resetHandler,),
         ],
        ),       
    );
  }
}