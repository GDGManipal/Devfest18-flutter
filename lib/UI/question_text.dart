import 'package:flutter/material.dart';
class QuestionText extends StatefulWidget {
  final String _question;
  final int _questionNumber;

  QuestionText(this._question, this._questionNumber);

  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText> {
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,

      child: new Padding(
          padding: new EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
          child: new Center(

            child: Column(
              children: <Widget>[
                new Text(
                  "Statement " +
                      widget._questionNumber.toString() +
                      ":\n" ,
                  style: new TextStyle(
                    fontSize: 16.0,
                    fontFamily: "Roboto",
                  ),
                ),
                new Text(
                      widget._question,
                  style: new TextStyle(
                    fontSize: 24.0,
                    fontFamily: "Roboto",
                  ),
                )
              ],
            ),
          )),
    );
  }
}
