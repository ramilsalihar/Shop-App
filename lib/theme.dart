import 'package:flutter/material.dart';

final theme = ThemeData(
  primaryColor: Colors.black,
  cardColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: Colors.deepOrange,
  ),
  fontFamily: 'Lato',
  textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 16, color: Colors.white)
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
    )
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.black,
  )

);