import 'package:flutter/material.dart';

import './quiz_page.dart';

class ScorePage extends StatelessWidget {
  final int score;
  final int totalQuestions;

  ScorePage(this.score, this.totalQuestions);

  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.blueAccent,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Expanded(child: new Container()),
            new Text(
              "Your Score: ",
              style: new TextStyle(
                  color: Colors.white,
                  fontSize: 25.0),
            ),
            new Text(score.toString() + "/" + totalQuestions.toString(),
                style: new TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0)),
            new Expanded(child: new Container()),
            new IconButton(
                icon: new Icon(Icons.refresh),
                color: Colors.white,
                iconSize: 50.0,
                onPressed: () =>
                    Navigator.of(context).pushAndRemoveUntil(
                        new MaterialPageRoute(
                            builder: (BuildContext context) => new QuizPage()),
                            (Route route) => route == null)
            ),
            new Expanded(child: new Container())
          ],
        ));
  }
}
