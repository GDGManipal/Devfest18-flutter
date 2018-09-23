import 'package:flutter/material.dart';

class ResultOverlay extends StatefulWidget {
  final bool _isCorrect;
  final VoidCallback _onTap;

  ResultOverlay(this._isCorrect, this._onTap);

  @override
  State createState() => new ResultOverlayState();
}

class ResultOverlayState extends State<ResultOverlay> {
  @override
  Widget build(BuildContext context) {
    return new Material(
        color: widget._isCorrect == true ? Colors.green : Colors.red,
        child: new Opacity(
          opacity: 1.0,
          child: new InkWell(
            onTap: () => widget._onTap(),
            child: new Center(
              child: new Text(
                widget._isCorrect == true ? "Correct" : "Wrong",
                style: new TextStyle(
                  fontSize: 32.0,
                  fontFamily: "Roboto",
                  color: Colors.white
                ),
              ),
            ),
          ),
        )); //
  }
}
