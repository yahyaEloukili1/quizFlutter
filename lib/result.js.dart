import 'package:flutter/material.dart';


class Result extends StatelessWidget {
final int resultScore;
final Function resetScore;
Result({this.resultScore,this.resetScore});

String get resultPhrase {
  String resultText;
  if (resultScore <= 8) {
    resultText = 'You are awesome and innocent!';
  } else if (resultScore <= 12) {
    resultText = 'Pretty likeable!';
  } else if (resultScore <= 16) {
    resultText = 'You are ... strange?!';
  } else {
    resultText = 'You are so bad!';
  }
  return resultText;
}

  @override
  Widget build(BuildContext context) {
    return
      Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(resultScore.toString()+ " "+ resultPhrase,style: TextStyle(fontSize: 25),textAlign: TextAlign.center,),
            Container(color: Colors.blue,child: TextButton(onPressed: resetScore, child: Text('rest',style: TextStyle(color: Colors.white),)))
          ],
        ),
      );
      Center( child : Text(resultScore.toString()+resultPhrase,style: TextStyle(fontSize: 25),));
  }
}
