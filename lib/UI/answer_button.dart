import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final bool _answer;
  final VoidCallback _onTap;

  AnswerButton(this._answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new RaisedButton(
        onPressed: () => _onTap(),
        elevation: 4.0,
        color: _answer == true ? Colors.green : Colors.red,
        shape: StadiumBorder(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              new Icon(
                  _answer == true ? Icons.done : Icons.close,
                color: Colors.white,
              ),
//              new SizedBox(width: 10.0),
//              new Text(
//                _answer == true ? "True" : "False",
//                style: new TextStyle(
//                  fontSize: 24.0,
//                  fontFamily: "Roboto",
//                  fontWeight: FontWeight.w300,
//                  color: Colors.white
//                ),
//              ),
            ],
          ),
        ),
      ),
    );
  }
}
