import 'package:flutter/material.dart';

class Answer  extends StatelessWidget {
  final String text;
  final Function answerQuestion;
  Answer({this.text, this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        color: Colors.blue,
        child: TextButton(onPressed: answerQuestion,child: Text(text,style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),));
  }
}
