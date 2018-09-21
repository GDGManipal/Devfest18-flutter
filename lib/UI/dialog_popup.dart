import 'package:flutter/material.dart';

class DialogPopUp extends StatefulWidget {

  final bool _isCorrect;
  final VoidCallback _onTap;

  DialogPopUp(this._isCorrect, this._onTap);

  @override
  State createState() => new DialogPopUpState();
}

class DialogPopUpState extends State<DialogPopUp> {

  @override
  Widget build(BuildContext context) {
    return new Dialog();
//        return new Material(
//      color: Colors.black54,
//      child: new InkWell(
//        onTap: () => widget._onTap(),
//        child: new Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            new Container(
//              decoration: new BoxDecoration(
//                  color: Colors.white,
//                  shape: BoxShape.circle
//              ),
//              child: new Transform.rotate(
//                angle: _iconAnimation.value * 2 * PI,
//                child: new Icon(widget._isCorrect == true ? Icons.done : Icons.clear, size: _iconAnimation.value * 80.0,),
//              ),
//            ),
//            new Padding(
//              padding: new EdgeInsets.only(bottom: 20.0),
//            ),
//            new Text(widget._isCorrect == true ? "Correct!" : "Wrong!", style: new TextStyle(color: Colors.white, fontSize: 30.0),)
//          ],
//        ),
//      ),
//    );
  }
}