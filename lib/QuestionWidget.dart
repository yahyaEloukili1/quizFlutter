import 'package:flutter/material.dart';
import 'package:quiz_app/question.dart';
class QuestionWidget  extends StatelessWidget {
  final String question;
    QuestionWidget(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(question,style: TextStyle(fontSize: 24),));
  }
}
