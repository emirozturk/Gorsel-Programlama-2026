import 'package:flutter/material.dart';
import 'package:hatfa5/anasayfa.dart';
import 'package:hatfa5/mekan.dart';
import 'package:hatfa5/sehir_secim.dart';
import 'package:hatfa5/sol_menu.dart';
import 'package:hatfa5/sonsayfa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var sayfalar = [Anasayfa(), Mekan(), Sonsayfa()];
  
  var seciliSayfa = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: SolMenu(),
        ),
        body: sayfalar[seciliSayfa],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          currentIndex: seciliSayfa,
          onTap: (deger) => setState(() {
            seciliSayfa = deger;
          }),
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Anasayfa"),
            BottomNavigationBarItem(
              icon: Icon(Icons.roundabout_left),
              label: "Mekan",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.last_page),
              label: "Son Sayfa",
            ),
          ],
        ),
      ),
    );
  }
}
