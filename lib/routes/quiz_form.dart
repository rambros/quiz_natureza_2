import 'package:flutter/material.dart';
import 'package:quiz_natureza_2/model/perguntas_model.dart';
import 'package:quiz_natureza_2/routes/quiz_resultados.dart';
import 'package:quiz_natureza_2/widgets/widget_form.dart';
import 'package:quiz_natureza_2/model/respostas_model.dart';

class QuizForm extends StatefulWidget {
  ListaPerguntas listaPerguntas; // contem lista das perguntas
  RespostasQuiz  respostasQuiz; //onde ficarão armazenadas as respostas dos elementos

  @override
  _QuizFormState createState() => _QuizFormState();

  QuizForm({this.listaPerguntas, this.respostasQuiz});
}

class _QuizFormState extends State<QuizForm> {
  //int i = 0;

  @override
  Widget build(BuildContext context) {
    int i = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Avaliação Natureza Humana'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              for (var pergunta in widget.listaPerguntas.perguntas)
                WidgetForm(
                    index: i++,
                    question: pergunta,
                    respostasQuiz: widget.respostasQuiz),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Go back!'),
              ),
              RaisedButton(
                  child: Text('Calcular Resultados'),
                  onPressed: () async {
                    var resultado = widget.respostasQuiz.consisteRespostas();
                    if (resultado != null) {
                      return showDialog<void>(
                        context: context,
                        barrierDismissible: false, // user must tap button!
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Validação do formulário'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  Text(resultado),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              FlatButton(
                                child: Text('Retornar e Corrigir'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                          );
                        },
                      );
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizResultados(
                                respostasQuiz: widget.respostasQuiz,
                              )),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
