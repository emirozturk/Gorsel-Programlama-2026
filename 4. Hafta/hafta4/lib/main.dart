import 'package:flutter/material.dart';
import 'package:hafta4/ozel_tus.dart';

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
  var sayac = 0;

  void arttir() {
    setState(() {
      sayac++;
    });
  }

  void sifirla() {
    setState(() {
      sayac = 0;
    });
  }
  yazdir(deger){
    print(deger);
  }

  var liste = ["a1", "b2", "c3", "d4", "d5", "e6"];
  var liste2 = ["1", "2", "3", "4", "5", "6"];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: liste.length,
          itemBuilder: (context, i) => ListTile(
            title: Text(liste[i]),
            leading: Icon(Icons.access_alarms_outlined),
            trailing: Text(liste2[i]),
            onTap: () =>yazdir(liste[i]),
            hoverColor: Colors.blue,
          ),
        ),
      ),
      /*
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Sayaç: $sayac"),
            Text(
              "Uzun bir deneme metni. Bugün hava çok güzel. Çok ama çok çok güzel.",
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight(800),
                color: Colors.amber,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("R1"), Text("R2"), Text("R3")],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //ElevatedButton(onPressed: arttir, child: Text("Arttir")),
                OzelTus(Icons.abc, "Arttır",arttir),
                OzelTus(Icons.home, "Sıfırla",sifirla),
              ],
            ),
          ],
        ),
      ),*/
    );
  }
}
