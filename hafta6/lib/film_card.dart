import 'package:flutter/material.dart';
import 'package:hafta6/film.dart';

class FilmCard extends StatelessWidget {
  Film film;
  FilmCard(this.film);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: SizedBox(height: 200, child: Image.asset(film.afis)),
            ),
            Center(child: Text(film.ad, style: TextStyle(fontSize: 24,fontFamily: "Times New Roman"))),
            Center(child: Text("${film.yil ?? ""}")),
          ],
        ),
      ),
    );
  }
}
