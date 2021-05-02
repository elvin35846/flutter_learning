import 'package:bagzz_app_ui/theme/custom_app_bar_theme.dart';
import 'package:bagzz_app_ui/widgets/signup/signup_form_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static const routeName = '/signup';
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
            margin: EdgeInsets.only(top: 50),
            height: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height -
                140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SignupFormWidget(),
              ],
            ),
          ),
        ));
  }
}
