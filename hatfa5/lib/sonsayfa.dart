import 'package:flutter/material.dart';

class Sonsayfa extends StatefulWidget{
  @override
  State<Sonsayfa> createState() => _SonsayfaState();
}

class _SonsayfaState extends State<Sonsayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text("Merhaba"),
            Text("İsim"),
            Text("xlisiniz")
          ],
        ),
      ),
    );
  }
}