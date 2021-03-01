import 'package:flutter/material.dart';
import 'package:quiz_natureza_2/model/high_profile_model.dart';
import 'package:quiz_natureza_2/routes/home_page.dart';
import 'package:quiz_natureza_2/model/respostas_model.dart';
import 'package:quiz_natureza_2/services/elements_services.dart';

class QuizResultados extends StatefulWidget {
  final RespostasQuiz respostasQuiz;

  QuizResultados({this.respostasQuiz}) {
    respostasQuiz.calculaTotais();
  }

  @override
  _QuizResultadosState createState() => _QuizResultadosState();
}

class _QuizResultadosState extends State<QuizResultados> {
  HighProfiles listHighProfiles;

  Future<void> _loadHighProfiles() async {
    listHighProfiles = await loadHighProfiles();
  }

  @override
  void initState() {
    super.initState();
    _loadHighProfiles(); //monta estrutura de respostas também
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
            Text('Total Agua = ${widget.respostasQuiz.totalAgua}'),
            Text('Total Ar = ${widget.respostasQuiz.totalAr}'),
            Text('Total Fogo = ${widget.respostasQuiz.totalFogo}'),
            Text('Total Terra = ${widget.respostasQuiz.totalTerra}'),
            RaisedButton(
              child: Text('Reiniciar Avaliação!'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MyHomePage(title: 'Avaliação da Natureza Humana'),
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text('Gerar Avaliação!'),
              onPressed: () { 
                _generateFeedback(listHighProfiles, widget.respostasQuiz);
              },
            ),
          ],
        ),
      ),
    );
  }


String _generateFeedback(HighProfiles listHighProfiles, RespostasQuiz respostasQuiz ) {
  //final agua = listElements.elements[1];
  //final aguaBusiness = listElements.elements[1].contexts[0];
  //final aguaValue = widget.respostasQuiz.totalAgua;
  //final aguaText = aguaBusiness.feedbacks[1].text;

  for (var i = 0; i < listHighProfiles.highProfiles.length; i++) {
    var highProfile = listHighProfiles.highProfiles[i];
    print (highProfile.profileName);
    for (var y = 0; y < highProfile.contexts.length; y++) {
      var context = highProfile.contexts[y];
      print(context.contextName);
      print(context.feedback);

      // var elementQuizValue = getElementQuizValue(element, respostasQuiz);
      // print( 'Devolutiva $element $context -> ${getFeedbackText(feedbacks, elementQuizValue)}');
    }
  }

  // print('Elemento -> ${agua.element}');
  // print('Contexto -> ${aguaBusiness.context}');
  // print( 'Devolutiva -> ${getFeedbackText(aguaBusiness.feedbacks, aguaValue)}');
}

// String getFeedbackText( List<ElementModel.Feedback> feedbacks, int elementQuizValue) {
//     for (var i = 0; i < feedbacks.length; i++) {
//     if ((elementQuizValue >= feedbacks[i].start) &&  
//        (elementQuizValue <= feedbacks[i].end)) {
//          return feedbacks[i].text;
//        }
//   }
//   return 'texto não encontrado';
// }

int getElementQuizValue(String element, RespostasQuiz respostasQuiz ) {
  switch (element) {
    case 'terra': return respostasQuiz.totalTerra;
    case 'ar': return respostasQuiz.totalAr;
    case 'fogo': return respostasQuiz.totalFogo;
    case 'agua': return respostasQuiz.totalAgua;
    default: return 0;
  }
}

}
