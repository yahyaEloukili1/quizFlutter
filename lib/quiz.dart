
import 'package:flutter/material.dart';
import 'package:quiz_app/Answer.dart';
import 'package:quiz_app/QuestionWidget.dart';
class Quiz extends StatelessWidget {

final String questionText;
final Map answer1;
final Map answer2;
final Map answer3;
final Map answer4;
final Function answerQuestion;

  Quiz({this.questionText,this.answer1,this.answer2,this.answer3,this.answer4,this.answerQuestion});



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionWidget(questionText),
        Answer(text: answer1['text'],answerQuestion: ()=>answerQuestion(answer1['score'])),
        Answer(text: answer2['text'],answerQuestion: ()=>answerQuestion(answer2['score'])),
        Answer(text: answer3['text'],answerQuestion: ()=>answerQuestion(answer3['score'])),
        Answer(text: answer4['text'],answerQuestion: ()=>answerQuestion(answer4['score'])),
      ],
    );
  }
}
