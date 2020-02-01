import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quiz_natureza_2/model/perguntas_model.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:quiz_natureza_2/model/respostas_model.dart';

class WidgetForm extends StatelessWidget {
  final Pergunta question;
  RespostasQuiz respostasQuiz;
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();

  final int index;

  WidgetForm({this.index, this.question, this.respostasQuiz});

  var _rating1 = 0;

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
                '${(index + 1).toString()}.' + question.pergunta,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                question.opcaoAgua,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.left,
              ),
              RatingBar(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                itemCount: 4,
                itemSize: 32.0,
                itemPadding: EdgeInsets.symmetric(horizontal: 10.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  //_rating1 = rating.toInt();
                  respostasQuiz.respostas[index].respostaAgua = rating.toInt();
                  //print(_rating1);
                  //print(respostasQuiz.respostas[index].respostaAgua);

                },
              ),
              Text(
                question.opcaoAr,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.left,
              ),
              RatingBar(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 4,
                itemPadding: EdgeInsets.symmetric(horizontal: 10.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  size: 8.0,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  respostasQuiz.respostas[index].respostaAr = rating.toInt();
                  // _rating1 = rating.toInt();
                  // print(_rating1);
                },
              ),
              Text(
                question.opcaoTerra,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.left,
              ),
              RatingBar(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 4,
                itemPadding: EdgeInsets.symmetric(horizontal: 10.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  size: 8.0,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  respostasQuiz.respostas[index].respostaTerra = rating.toInt();
                  // _rating1 = rating.toInt();
                  // print(_rating1);
                },
              ),
              Text(
                question.opcaoFogo,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.left,
              ),
              RatingBar(
                initialRating: 0,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 4,
                itemPadding: EdgeInsets.symmetric(horizontal: 10.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  size: 8.0,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  respostasQuiz.respostas[index].respostaFogo = rating.toInt();
                  // _rating1 = rating.toInt();
                  // print(_rating1);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
