import 'package:flutter/material.dart';

class LoginTextfieldWidget extends StatefulWidget {
  // ! Important!!! - ALL STYLES NEED TO REFACTOR
  final TextInputType keyboardType;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;
  LoginTextfieldWidget({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    required this.obscureText,
  }) : super(key: key);

  @override
  _LoginTextfieldWidgetState createState() => _LoginTextfieldWidgetState();
}

class _LoginTextfieldWidgetState extends State<LoginTextfieldWidget> {
  final _borderInputDecoration = OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.black,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(5),
  );
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: Color(0xffd9d9d9),
          fontSize: 14,
          fontFamily: 'Work Sans',
          fontWeight: FontWeight.w500,
        ),
        contentPadding: EdgeInsets.all(8.0),
        border: _borderInputDecoration,
        errorBorder: _borderInputDecoration,
        enabledBorder: _borderInputDecoration,
        focusedBorder: _borderInputDecoration,
        disabledBorder: _borderInputDecoration,
        focusedErrorBorder: _borderInputDecoration,
      ),
    );
  }
}
