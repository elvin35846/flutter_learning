import 'package:bagzz_app_ui/screens/forgot_password_screen.dart';
import 'package:bagzz_app_ui/theme/auth_theme.dart';
import 'package:bagzz_app_ui/widgets/login/login_textfield_widget.dart';
import 'package:flutter/material.dart';

class LoginFormWidget extends StatefulWidget {
  // ! Important!!! - ALL STYLES NEED TO REFACTOR
  const LoginFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  _LoginFormWidgetState createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  // ! CREATE CONTROLLERS FOR TEXTFIELDS
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SIGN IN',
          textAlign: AuthTheme.titleTextAlign,
          style: AuthTheme.titleTextStyle,
        ),
        SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50.0),
          child: Column(
            children: [
              LoginTextfieldWidget(
                keyboardType: TextInputType.emailAddress,
                hintText: 'EMAIL',
                controller: _emailTextController,
                obscureText: false,
              ),
              SizedBox(height: 30.0),
              LoginTextfieldWidget(
                keyboardType: TextInputType.visiblePassword,
                hintText: 'PASSWORD',
                controller: _passwordTextController,
                obscureText: true,
              ),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            // ! FUNCTION FOR NAVIGATE TO FORGOT SCREEN
            Navigator.of(context).pushNamed(ForgotPasswordScreen.routeName);
          },
          child: Text(
            'FORGOT PASSWORD',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff1abcfe),
              fontSize: 12,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // ! FUNCTION WHERE CHECKED CONTROLLERS VALUE AND DO SOMETHING
          },
          style: AuthTheme.submitButtonStyle,
          child: Text(
            'LOGIN',
            textAlign: AuthTheme.sumbitButtonTextAlign,
            style: AuthTheme.sumbitButtonTextStyle,
          ),
        ),
      ],
    );
  }
}
