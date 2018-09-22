import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final bool _answer;
  final VoidCallback _onTap;

  AnswerButton(this._answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return new RaisedButton(
      onPressed: () => _onTap(),
      elevation: 4.0,
      color: _answer == true ? Colors.green : Colors.red,
      child: new Text(
        _answer == true ? "True" : "False",
        style: new TextStyle(
          fontSize: 24.0,
          fontFamily: "Roboto",
        ),
      ),
    );
  }
}
