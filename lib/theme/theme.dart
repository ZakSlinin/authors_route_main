import 'package:flutter/material.dart';

final darkTheme = ThemeData(
  textTheme: TextTheme(
    bodyMedium: TextStyle(
        color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700),
    bodyLarge: TextStyle(
        color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
    bodySmall: TextStyle(
        color: Colors.white, fontSize: 15, fontWeight: FontWeight.w100),
  ),
  scaffoldBackgroundColor: Color(0xFFF3F3F3),
  appBarTheme: AppBarTheme(
    backgroundColor: Color.fromARGB(255, 4, 26, 91),
  ),
);