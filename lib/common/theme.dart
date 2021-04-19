import 'package:flutter/material.dart';

final baseTheme = ThemeData(
  primarySwatch: Colors.deepPurple,
  fontFamily: "Nunito",
);

final lightTheme = baseTheme.copyWith(
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    textTheme: baseTheme.textTheme,
    iconTheme: baseTheme.iconTheme,
    elevation: 1.0,
  ),
);

final darkTheme = ThemeData(
  primarySwatch: Colors.deepPurple,
  brightness: Brightness.dark,
  fontFamily: "Nunito",
);
