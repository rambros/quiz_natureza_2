import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:quiz_natureza_2/model/perguntas_model.dart';

class WidgetPergunta extends StatelessWidget {
  final Pergunta question;

  WidgetPergunta(this.question);

  var _rating1 = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              question.pergunta,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 8,),
            Text(
              question.opcaoAgua,
              style: TextStyle(fontSize: 12),
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
                _rating1 = rating.toInt();
                print(_rating1);
              },
            ),
            Text(
              question.opcaoAr,
              style: TextStyle(fontSize: 12),
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
                _rating1 = rating.toInt();
                print(_rating1);
              },
            ),
            Text(
              question.opcaoTerra,
              style: TextStyle(fontSize: 12),
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
                _rating1 = rating.toInt();
                print(_rating1);
              },
            ),
            Text(
              question.opcaoFogo,
              style: TextStyle(fontSize: 12),
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
                _rating1 = rating.toInt();
                print(_rating1);
              },
            ),
          ],
        ),
      ),
    );
  }
}
