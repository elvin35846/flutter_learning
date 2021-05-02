import 'package:bagzz_app_ui/theme/auth_theme.dart';
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
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.obscureText,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: AuthTheme.textfieldHintStyle,
        contentPadding: AuthTheme.textfieldContetPadding,
        border: AuthTheme.textfieldInputBorder,
        errorBorder: AuthTheme.textfieldInputBorder,
        enabledBorder: AuthTheme.textfieldInputBorder,
        focusedBorder: AuthTheme.textfieldInputBorder,
        disabledBorder: AuthTheme.textfieldInputBorder,
        focusedErrorBorder: AuthTheme.textfieldInputBorder,
      ),
    );
  }
}
