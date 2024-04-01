import 'package:flutter/material.dart';
ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.black,
  ),
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.grey[900]!,
    secondary: Colors.grey[800]!,
  )
  // Define other properties here
);

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
  ),
  colorScheme: ColorScheme.light(
    background: Colors.blue,
    primary: Colors.blue[900]!,
    secondary: Colors.grey[800]!,
  )
  // Define other properties here
);
