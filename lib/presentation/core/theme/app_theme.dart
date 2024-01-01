import 'package:flutter/material.dart';

class AppTheme {

  static final ThemeData lightThemeData = ThemeData(
      primaryColor: Colors.black,
      cardColor: Colors.white,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.deepOrange,
      ),
      fontFamily: 'Lato',
      textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 16, color: Colors.white)
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

  static final ThemeData darkThemeData = ThemeData();
}

