import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quiz_natureza_2/model/perguntas_model.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quiz_natureza_2/model/respostas_model.dart';

class WidgetForm extends StatelessWidget {
  final Pergunta question;
  final RespostasQuiz respostasQuiz;
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  final int index;

  WidgetForm({this.index, this.question, this.respostasQuiz});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: FormBuilder(
        key: _fbKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '${(index + 1).toString()}. ' + question.pergunta,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 8),
              Text(
                question.opcaoAgua,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.left,
              ),
              RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 4,
                itemSize: 34.0,
                itemPadding: EdgeInsets.symmetric(horizontal: 10.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  respostasQuiz.respostas[index].respostaAgua = rating.toInt();
                }, 
              ),
              SizedBox(height: 6),
              Text(
                question.opcaoAr,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.left,
              ),
              RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 4,
                itemSize: 34.0,
                itemPadding: EdgeInsets.symmetric(horizontal: 10.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  respostasQuiz.respostas[index].respostaAr = rating.toInt();
                },
              ),
              SizedBox(height: 6),
              Text(
                question.opcaoTerra,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.left,
              ),
              RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 4,
                itemSize: 34.0,
                itemPadding: EdgeInsets.symmetric(horizontal: 10.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  respostasQuiz.respostas[index].respostaTerra = rating.toInt();
                },
              ),
              SizedBox(height: 6),
              Text(
                question.opcaoFogo,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.left,
              ),
              RatingBar.builder(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 4,
                itemSize: 34.0,
                itemPadding: EdgeInsets.symmetric(horizontal: 10.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  respostasQuiz.respostas[index].respostaFogo = rating.toInt();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
