import 'package:flutter/material.dart';
import 'package:storydeck/home/home_page.dart';

void main() {
  runApp(Storydeck());
}

class Storydeck extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Storydeck',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // accentColor: Colors.yellowAccent,
        brightness: Brightness.dark,
        fontFamily: "Nunito",
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => Home(),
      },
    );
  }
}
