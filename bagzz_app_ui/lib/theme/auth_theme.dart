import 'package:flutter/material.dart';

abstract class AuthTheme {
  // TITLES AUTH THEME
  static const titleTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'Work Sans',
    fontWeight: FontWeight.w500,
  );
  static const subtitleTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 9,
    fontFamily: 'Work Sans',
    fontWeight: FontWeight.w500,
  );
  static const titleTextAlign = TextAlign.center;
  static const subtitleTextAlign = TextAlign.center;

  // TEXT FIELD AUTH THEME
  static const textfieldInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 1,
    ),
  );
  static const textfieldHintStyle = TextStyle(
    color: Color(0xffd9d9d9),
    fontSize: 14,
    fontFamily: 'Work Sans',
    fontWeight: FontWeight.w500,
  );
  static const textfieldContetPadding = EdgeInsets.all(8.0);

  // SUBMIT BUTTON AUTH THEME(LOGIN, etc.)
  static final submitButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color?>(Colors.black),
    padding: MaterialStateProperty.all<EdgeInsetsGeometry?>(
        EdgeInsets.symmetric(horizontal: 70, vertical: 10)),
  );
  static const sumbitButtonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Work Sans',
    fontWeight: FontWeight.w500,
  );
  static const sumbitButtonTextAlign = TextAlign.center;
}
