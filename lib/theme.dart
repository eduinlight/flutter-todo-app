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
      headline4: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: Colors.black.withOpacity(0.8)),
    ),
    scaffoldBackgroundColor: _backgroundColor,
    textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
      textStyle: MaterialStateProperty.all(const TextStyle(
          color: Color(0xFFAD491E), fontSize: 14, fontWeight: FontWeight.bold)),
      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
      minimumSize: MaterialStateProperty.all(const Size(50, 35)),
      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
    )),
    inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 32),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
        hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
        labelStyle: const TextStyle(color: Colors.black)));
