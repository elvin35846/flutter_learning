import 'package:flutter/material.dart';

abstract class AuthTheme {
  static const titleTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'Work Sans',
    fontWeight: FontWeight.w500,
  );
  static const titleTextAlign = TextAlign.center;
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
}
