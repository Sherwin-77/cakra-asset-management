import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData.dark().copyWith(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF5D00C3),
  ),
  colorScheme: const ColorScheme.dark(
    background: Color.fromRGBO(11, 22, 35, 1),
    primary: Color(0xFF5D00C3),
    onPrimary: Colors.white,
    secondary: Color(0xFF2F353D),
  ),
  textTheme: Typography.whiteMountainView.copyWith(
    titleSmall: TextStyle(
      color: Colors.white
    )
  ),

  // Define other properties here
);

ThemeData lightMode = ThemeData.light().copyWith(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF5D00C3),
    foregroundColor: Colors.white,
  ),
  colorScheme: const ColorScheme.light(
    background: Color.fromRGBO(251, 251, 251, 1),
    primary: Color(0xFF5D00C3),
    secondary: Color(0xFFDDDDDD),
  ),
  textTheme: Typography.blackMountainView.copyWith(
    titleSmall: TextStyle(
      color: Colors.grey[800]
    )
  ),

  // Define other properties here
);
