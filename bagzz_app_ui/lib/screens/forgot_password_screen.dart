import 'package:bagzz_app_ui/theme/custom_app_bar_theme.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);
  static const routeName = '/forgot_password';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomAppBarTheme.backgroundColor,
        iconTheme: CustomAppBarTheme.iconTheme,
        elevation: CustomAppBarTheme.elevation,
        title: CustomAppBarTheme.title,
      ),
    );
  }
}
