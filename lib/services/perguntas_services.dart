import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:quiz_natureza_2/model/perguntas_model.dart';

Future<String> _loadPerguntasAsset() async {
  return await rootBundle.loadString('assets/pergunta.json');
}

//TODO Incluir Adapter para loadPerguntas

Future<ListaPerguntas> loadPerguntas() async {
  String jsonPerguntas = await _loadPerguntasAsset();
  final jsonResponse = json.decode(jsonPerguntas);
  ListaPerguntas listaPerguntas = ListaPerguntas.fromJson(jsonResponse);
  return listaPerguntas;
  // for (int i = 0; i < listaPerguntas.perguntas.length; i++) {
  //   print("pergunta " + listaPerguntas.perguntas[i].pergunta);
  //   print("terra->" + listaPerguntas.perguntas[i].opcaoTerra);
  // }
}
