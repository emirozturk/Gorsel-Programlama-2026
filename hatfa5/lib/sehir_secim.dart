import 'package:flutter/material.dart';

class SehirSecim extends StatefulWidget {
  @override
  State<SehirSecim> createState() => _SehirSecimState();
}

class _SehirSecimState extends State<SehirSecim> {
  var sehirListesi = [
    "İstanbul",
    "Zonguldak",
    "Edirne",
    "Kırklareli",
    "Tekirdağ",
    "Çanakkale",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView.builder(
          itemCount: sehirListesi.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(Icons.route),
            title: Text(sehirListesi[index]),
            onTap: () => Navigator.pop(context, sehirListesi[index]),
          ),
        ),
      ),
    );
  }
}
