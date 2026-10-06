import 'package:flutter/material.dart';

class OzelTus extends StatelessWidget {
  IconData icon;
  String text;
  VoidCallback metot;
  OzelTus(this.icon, this.text,this.metot);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: metot,
        child: Row(
          mainAxisAlignment: .center,
          children: [Icon(icon), Text(text)],
        ),
      ),
    );
  }
}
