import 'package:flutter/material.dart';
import 'package:hatfa5/sehir_secim.dart';

class Mekan extends StatefulWidget {
  @override
  State<Mekan> createState() => _MekanState();
}

class _MekanState extends State<Mekan> {
  var sehirController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text("Şehir seçin"),
            TextField(
              controller: sehirController,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SehirSecim()),
              ).then((value) => sehirController.text = value),
            ),
          ],
        ),
      ),
    );
  }
}
