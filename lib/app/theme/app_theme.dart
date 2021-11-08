import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    primaryTextTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
        fontSize: 21,
        fontWeight: FontWeight.w300,
      ),
      button: TextStyle(
        fontSize: 21,
      ),
    ),
  );
}
