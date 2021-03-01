import 'package:flutter/material.dart';
import 'package:quiz_natureza_2/services/perguntas_services.dart';
import 'package:quiz_natureza_2/model/perguntas_model.dart';
import 'package:quiz_natureza_2/model/respostas_model.dart';
import 'package:quiz_natureza_2/routes/quiz_form.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ListaPerguntas listaPerguntas;
  RespostasQuiz respostasQuiz;

  Future<void> _loadPerguntas() async {
    listaPerguntas = await loadPerguntas();
    respostasQuiz = RespostasQuiz(size: listaPerguntas.perguntas.length);
  }

  @override
  void initState() {
    super.initState();
    _loadPerguntas(); //monta estrutura de respostas também
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pagina inicial',
            ),
            RaisedButton(
              child: Text('iniciar pesquisa'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => 
                    QuizForm(
                      listaPerguntas: listaPerguntas,
                      respostasQuiz: respostasQuiz,
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
