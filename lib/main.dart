import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/Answer.dart';
import 'package:quiz_app/QuestionWidget.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.js.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage() ,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Question> questions = [
    Question(questionText: 'Whats your favorite color',answer1:  {'text': 'Black', 'score': 10},
     answer2: {'text': 'Red', 'score': 5},
    answer3 :  {'text': 'Green', 'score': 3},
      answer4 :{'text': 'White', 'score': 1}, ),
    Question(questionText: 'Whats your favorite animal',answer1: {'text': 'Rabbit', 'score': 3},
     answer2 : {'text': 'Snake', 'score': 11},
     answer3 : {'text': 'Elephant', 'score': 5},
     answer4 : {'text': 'Lion', 'score': 9},),
    Question(questionText: 'Whats your favorite instructor',
     answer1: {'text': 'Max', 'score': 1},
      answer2 : {'text': 'Max', 'score': 1},
      answer3 :{'text': 'Max', 'score': 1},
      answer4 :{'text': 'Max', 'score': 1},)
  ];
  int index = 0;
  int totalScore = 0;
  void resetQuiz(){
    setState(() {
      index = 0;
      totalScore = 0;
    });
  }
  void answerQuestion(int score){

    setState(() {
      index++;
      totalScore +=score;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz App'),),
      body: index <questions.length ?
      Quiz(questionText: questions[index].questionText,answer1: questions[index].answer1,
      answer2: questions[index].answer2,
      answer3:questions[index].answer3,
      answer4: questions[index].answer4,
      answerQuestion: answerQuestion,)
          : Result(resultScore: totalScore,resetScore: resetQuiz,)


    );
  }
}


