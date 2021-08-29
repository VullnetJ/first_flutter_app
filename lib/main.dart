import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());

// }
void main() => runApp(MyApp()); // only one expression.

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
   final _questions = const [
      {'questionText': 'What\'s your favorite color?', 'answers': [
        {'text': 'Black', 'score':1}, 
        {'text': 'Red', 'score': 2}, 
        {'text':'Green', 'score':9}, 
        {'text':'White','score':10}, 
        {'text':'Orange', 'score':7}],},
      {'questionText': 'What\'s your favorite movie?', 'answers': [
         {'text': 'Mandalorian', 'score':9}, 
        {'text': 'Vikings', 'score': 9}, 
        {'text':'Vikingane', 'score':1}, 
        {'text':'The Last Kingdom','score':9}, 
        {'text':'Game of Thrones', 'score':10}],},
        
      {'questionText': 'What\'s your favorite fruit?', 'answers': [
         {'text': 'Apple', 'score': 8}, 
        {'text': 'Orange', 'score': 6}, 
        {'text':'Blueberries', 'score':10}, 
        {'text':'Hazzelnuts','score':9}, 
        {'text':'Tomatoes', 'score':1}],},    
        ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _resetQuiz(){
    setState(() {
       _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
      // var aBool = true;
      // aBool = false;
      _totalScore += score;

      setState(() {
          _questionIndex= _questionIndex +1;   
      });
      if (_questionIndex < _questions.length) {
        print('There are more questions');
      }
      else {
        print("no more questions");
      }

    // print('Answer chosen'); // it prints to console. 
    // print(questionIndex);
  }


  @override // just decorater, not required, overrride StatelssWidget.
  Widget build(BuildContext context) {
    
    var dummy = ['Hello'];
    dummy.add('Ela');
    print(dummy);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('My App'),
            backgroundColor: Colors.blue,
          ),
          body: _questionIndex < _questions.length 
          ? Quiz(
            answerQuestion: _answerQuestion, 
            questionIndex: _questionIndex, 
            questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}