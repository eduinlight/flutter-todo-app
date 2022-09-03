import 'package:flutter/material.dart';

const _backgroundColor = Color(0xFFEEEEEE);

final theme = ThemeData(
    brightness: Brightness.dark,
    backgroundColor: _backgroundColor,
    primaryColor: const Color(0xFFFAA885),
    fontFamily: 'Poppins-Regular',
    textTheme: TextTheme(
      button: const TextStyle(
          fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
      headline1: const TextStyle(
          color: Colors.black,
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal),
      headline2: const TextStyle(
          color: Colors.black,
          fontSize: 14.0,
          fontWeight: FontWeight.w600,
          fontStyle: FontStyle.normal),
      headline3: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Colors.black.withOpacity(0.8)),
    ),
    scaffoldBackgroundColor: _backgroundColor);
