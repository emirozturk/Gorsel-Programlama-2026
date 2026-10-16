import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget{
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text("İsminizi Giriniz"),
            TextField()
          ],
        ),
      ),
    );
  }
}