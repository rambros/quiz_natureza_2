import 'package:flutter/material.dart';
import 'package:quiz_natureza_2/model/respostas_model.dart';

class QuizResultados extends StatelessWidget {
  RespostasQuiz respostasQuiz;

  QuizResultados({this.respostasQuiz}) {
    respostasQuiz.calculaTotais();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avaliação Natureza Humana'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Resultados'),
            Text('Total Agua = ${respostasQuiz.totalAgua}'),
            Text('Total Ar = ${respostasQuiz.totalAr}'),
            Text('Total Fogo = ${respostasQuiz.totalFogo}'),
            Text('Total Terra = ${respostasQuiz.totalTerra}'),
          ],
        ),
      ),
    );
  }
}
