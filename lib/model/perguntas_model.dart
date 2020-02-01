
class ListaPerguntas {
  // Classe com List de perguntas
  final List<Pergunta> perguntas;

  ListaPerguntas({ this.perguntas,});

  factory ListaPerguntas.fromJson (List<dynamic> parsedJson) {
      List<Pergunta> perguntas = new List<Pergunta>();
      perguntas = parsedJson.map((i)=> Pergunta.fromJson(i)).toList();
      return new ListaPerguntas (perguntas: perguntas);

  }
}


class Pergunta {
  // Classe que contem os textos das perguntas e opções de cada elemento
  final String pergunta;
  final String opcaoTerra;
  final String opcaoAr;
  final String opcaoFogo;
  final String opcaoAgua;

  Pergunta({
    this.pergunta,
    this.opcaoTerra,
    this.opcaoAgua,
    this.opcaoAr,
    this.opcaoFogo,
  });

  factory Pergunta.fromJson (Map<String, dynamic> json) {
    return new Pergunta (
      pergunta: json['pergunta'],
      opcaoAgua: json['agua'],
      opcaoAr: json['ar'],
      opcaoFogo: json['fogo'],
      opcaoTerra: json['terra'],
    );
  }

}


