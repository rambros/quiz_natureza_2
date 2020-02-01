import 'package:flutter/material.dart';
import 'package:quiz_natureza_2/model/perguntas_model.dart';
import 'package:quiz_natureza_2/widgets/widget_pergunta.dart';

class QuizInicio extends StatefulWidget {
  ListaPerguntas listaPerguntas;
  @override
  _QuizInicioState createState() => _QuizInicioState();

  QuizInicio({this.listaPerguntas});
}

class _QuizInicioState extends State<QuizInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avaliação Natureza Humana'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              for (var pergunta in widget.listaPerguntas.perguntas)
                WidgetPergunta(pergunta),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
              RaisedButton(child: Text('proxima'), onPressed: () {}
                  //   Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context) => QuizPagina2()),
                  //    );
                  // }
                  )
            ],
          ),
        ),
      ),
    );
  }
}
