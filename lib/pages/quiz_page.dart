import 'package:flutter/material.dart';

import '../utils/question.dart';
import '../utils/quiz.dart';

import '../UI/answer_button.dart';
import '../UI/question_text.dart';
import '../UI/result_overlay.dart';

import './score_page.dart';

class QuizPage extends StatefulWidget {
  @override
  State createState() => new QuizPageState();
}

class QuizPageState extends State<QuizPage> {
  Question currentQuestion;
  Quiz quiz = new Quiz([
    new Question("You're at DevFest'18", true),
    new Question("Pizza is healthy", false),
    new Question("Flutter is awesome", true)
  ]);
  String questionText;
  int questionNumber;
  bool isCorrect;
  bool showIfCorrect = false;

  @override
  void initState() {
    super.initState();
    currentQuestion = quiz.nextQuestion;
    questionText = currentQuestion.question;
    questionNumber = quiz.questionNumber;
  }

  void handleAnswer(bool answer) {
    isCorrect = (currentQuestion.answer == answer);
    quiz.answer(isCorrect);
    this.setState(() {
      showIfCorrect = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Container(
          color: Colors.white,
          child: new Column(
            // This is our main page
            children: <Widget>[
              new Expanded(
                child: new Container(),
              ),
              new QuestionText(questionText, questionNumber),
              new SizedBox(height: 10.0),
              new Row(
                children: <Widget>[
                  new Expanded(child: new Container()),
                  new AnswerButton(true, () => handleAnswer(true)),
                  //true button
                  new Expanded(child: new Container()),
                  new AnswerButton(false, () => handleAnswer(false)),
                  // false button
                  new Expanded(child: new Container()),
                ],
              ),
              new Expanded(
                child: new Container(),
              ),
            ],
          ),
        ),
        showIfCorrect == true
            ? new ResultOverlay(isCorrect, () {
          if (quiz.length == questionNumber) {
            Navigator.of(context).pushAndRemoveUntil(
                new MaterialPageRoute(
                    builder: (BuildContext context) =>
                    new ScorePage(quiz.score, quiz.length)),
                    (Route route) => route == null);
            return;
          }
          currentQuestion = quiz.nextQuestion;
          this.setState(() {
            showIfCorrect = false;
            questionText = currentQuestion.question;
            questionNumber = quiz.questionNumber;
          });
        })
            : new Container()
      ],
    );
  }
}
