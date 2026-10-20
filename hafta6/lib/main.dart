import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hafta6/film.dart';
import 'package:hafta6/film_card.dart';
import 'package:hafta6/film_listesi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var sliderValue = 0.0;
  var liste = FilmListesi.liste;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autocorrect: true,
              obscureText: false,
              maxLength: 11,
              decoration: InputDecoration(
                hintText: "Tc giriniz",
                filled: true,
                fillColor: Colors.white,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
          ),
          RichText(
            text: const TextSpan(
              style: TextStyle(fontSize: 18, color: Colors.black),
              children: [
                TextSpan(
                  text: 'Birinci satır\n',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'İkinci satır\n',
                  style: TextStyle(color: Colors.deepPurple),
                ),
                TextSpan(text: 'Üçüncü satır'),
              ],
            ),
          ),
          SizedBox(
            width: 200,
            child: Slider(
              min: 0,
              max: 1,
              divisions: 5,
              value: sliderValue,
              onChanged: (v) => setState(() {
                sliderValue = v;
              }),
            ),
          ),
        ],
      ),
    );
  }
}
