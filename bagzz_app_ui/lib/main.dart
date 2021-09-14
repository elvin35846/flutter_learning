import 'package:bagzz_app_ui/screens/forgot_password_screen.dart';
import 'package:bagzz_app_ui/screens/login_screen.dart';
import 'package:bagzz_app_ui/screens/signup_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bagzz',
      routes: {
        LoginScreen.routeName: (ctx) => LoginScreen(),
        SignupScreen.routeName: (ctx) => SignupScreen(),
        ForgotPasswordScreen.routeName: (ctx) => ForgotPasswordScreen(),
      },
      theme: themeValue == 'dark' ? _darkTheme : _lightTheme,
      home: LoginScreen(),
    );
  }
}
