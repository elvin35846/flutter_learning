import 'package:flutter/material.dart';

abstract class CustomAppBarTheme {
  static const backgroundColor = Colors.transparent;
  static const iconTheme = IconThemeData(
    color: Colors.black,
  );
  static const elevation = 0.0;
  static const title = Text(
    'bagzz',
    style: TextStyle(
      color: Colors.black,
      fontSize: 22,
      fontFamily: 'Playfair Display',
      fontWeight: FontWeight.w700,
    ),
  );
}
