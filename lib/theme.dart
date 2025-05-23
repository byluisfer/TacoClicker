import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.orange,
  scaffoldBackgroundColor: Colors.orangeAccent,
  colorScheme: const ColorScheme.light(
    primary: Colors.orange,
    secondary: Colors.orangeAccent,
    onPrimary: Colors.white,
    onSecondary: Colors.black,
  ),
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.deepOrange,
  scaffoldBackgroundColor: Colors.deepOrangeAccent,
  colorScheme: const ColorScheme.dark(
    primary: Colors.deepOrange,
    secondary: Colors.deepOrangeAccent,
    onPrimary: Colors.black,
    onSecondary: Colors.white,
  ),
  textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
);
