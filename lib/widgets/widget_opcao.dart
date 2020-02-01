import 'package:flutter/material.dart';

class WidgetOpcao extends StatelessWidget {
  //final Function selectHandler;
  final String answerText;

  WidgetOpcao( this.answerText);
  //  WidgetOpcao(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        answerText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
      // child: RaisedButton(
      //   color: Colors.blue,
      //   textColor: Colors.white,
      //   child: Text(answerText),
      //   onPressed: selectHandler,
      // ),
    );
  }
}
