import 'package:flutter/material.dart';
import 'package:hatfa5/anasayfa.dart';
import 'package:hatfa5/mekan.dart';
import 'package:hatfa5/sonsayfa.dart';

class SolMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(48.0),
      child: Column(
        mainAxisAlignment: .center,
        children: [
          TextButton(
            child: Text("Anasayfa"),
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Anasayfa()),
            ),
          ),
          Divider(),
          TextButton(
            child: Text("Mekan"),
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Mekan()),
            ),
          ),
          Divider(),
          TextButton(
            child: Text("Son Sayfa"),
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Sonsayfa()),
            ),
          ),
        ],
      ),
    );
  }
}
