import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.fromSeed(seedColor: Colors.purple);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: colorScheme,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontFamily: GoogleFonts.lavishlyYours().fontFamily,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: colorScheme.primary,
          ),
          bodyLarge: TextStyle(
            fontFamily: 'Arial',
            fontSize: 18,
            fontWeight: FontWeight.normal,
            color: colorScheme.onSurface,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: colorScheme.onSurface,
          ),
          bodySmall: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: colorScheme.secondary,
          ),
        ),
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Uygulama"),
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Large", style: Theme.of(context).textTheme.titleLarge),
            Text("Medium", style: Theme.of(context).textTheme.bodyMedium),
            Text("Small", style: Theme.of(context).textTheme.bodySmall),
            Text("Default", style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}
