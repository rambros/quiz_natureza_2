import 'package:flutter/material.dart';
import 'package:quiz_natureza_2/routes/home_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Avaliação da Natureza Humana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Avaliação da Natureza Humana'),
    );
  }
}

