import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

import 'package:quiz_natureza_2/model/high_profile_model.dart';

Future<String> _loadHighProfilesAsset() async {
  return await rootBundle.loadString('assets/high_profile.json');
}

//TODO Incluir Adapter para loadPerguntas

Future<HighProfiles> loadHighProfiles() async {
  String jsonHighProfiles = await _loadHighProfilesAsset();
  final jsonResponse = json.decode(jsonHighProfiles);
  HighProfiles listaHighProfiles = HighProfiles.fromMap(jsonResponse);
  return listaHighProfiles;
  // for (int i = 0; i < listaPerguntas.perguntas.length; i++) {
  //   print("pergunta " + listaPerguntas.perguntas[i].pergunta);
  //   print("terra->" + listaPerguntas.perguntas[i].opcaoTerra);
  // }
}
