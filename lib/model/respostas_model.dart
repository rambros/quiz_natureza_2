
class Resposta {
  int respostaTerra = 0;
  int respostaFogo = 0;
  int respostaAr = 0;
  int respostaAgua = 0;
}

class RespostasQuiz {
  final int size; //monta qtde respostas de acordo com numero de perguntas
  
  int totalAgua = 0;
  int totalTerra = 0;
  int totalFogo = 0;
  int totalAr = 0;

  List<Resposta> respostas = new List();

  RespostasQuiz({this.size}) { 
    for (int i = 0; i < size; i++) {
      respostas.add(new Resposta());
    }
  }

  void calculaTotais() {
    for (int i = 0; i < respostas.length; i++) {
      totalAgua = totalAgua + respostas[i].respostaAgua;
      totalTerra = totalTerra + respostas[i].respostaTerra;
      totalAr = totalAr + respostas[i].respostaAr;
      totalFogo = totalFogo + respostas[i].respostaFogo;
    }
  }

  String consisteRespostas() {
    // verifica se todos os campos foram preenchidos
    for (int i = 0; i < respostas.length; i++) {
      var terra = respostas[i].respostaTerra;
      var agua = respostas[i].respostaAgua;
      var fogo = respostas[i].respostaFogo;
      var ar = respostas[i].respostaAr;

      if (agua == 0 || terra == 0 || fogo == 0 || ar == 0) {
        // print('Agua-> ${respostas[i].respostaAgua}');
        // print('Terra-> ${respostas[i].respostaTerra}');
        // print('Ar-> ${respostas[i].respostaAr}');
        // print('Fogo-> ${respostas[i].respostaFogo}');
        return 'A pergunta ${i + 1} ficou com opções em branco.';
      }

      // verifica se não tem respostas repetidas
      if ((fogo == ar) ||
          (fogo == terra) ||
          (fogo == agua) ||
          (ar == terra) ||
          (ar == agua) ||
          (terra == agua)) {
        return 'A pergunta ${i + 1} ficou com opções repetidas.';
      }
    }
    return null;
  }
}


// class ResultadoQuiz {
//   //Contem os resultados da Avaliação
//   int totalAgua = 0;
//   int totalTerra = 0;
//   int totalFogo = 0;
//   int totalAr = 0;
//   RespostasQuiz respostasQuiz;

//   ResultadoQuiz({this.respostasQuiz});

//   void calculaTotais() {
//     for (int i = 0; i < respostasQuiz.respostas.length; i++) {
//       totalAgua = totalAgua + respostasQuiz.respostas[i].respostaAgua;
//       totalTerra = totalTerra + respostasQuiz.respostas[i].respostaTerra;
//       totalAr = totalAr + respostasQuiz.respostas[i].respostaAr;
//       totalFogo = totalFogo + respostasQuiz.respostas[i].respostaFogo;
//     }
//   }
// }
