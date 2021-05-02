import 'package:bagzz_app_ui/theme/custom_app_bar_theme.dart';
import 'package:bagzz_app_ui/widgets/forgot_password/forgot_password_form_widget.dart';
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          height: MediaQuery.of(context).size.height -
              AppBar().preferredSize.height -
              140,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ForgotPasswordFormWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
