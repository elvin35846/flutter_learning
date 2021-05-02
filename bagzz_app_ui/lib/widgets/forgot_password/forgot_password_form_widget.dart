import 'package:bagzz_app_ui/theme/auth_theme.dart';
import 'package:bagzz_app_ui/widgets/login/login_textfield_widget.dart';
import 'package:flutter/material.dart';

class ForgotPasswordFormWidget extends StatefulWidget {
  ForgotPasswordFormWidget({Key? key}) : super(key: key);

  @override
  _ForgotPasswordFormWidgetState createState() =>
      _ForgotPasswordFormWidgetState();
}

class _ForgotPasswordFormWidgetState extends State<ForgotPasswordFormWidget> {
  final _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'FORGOT \nPASSWORD',
          textAlign: AuthTheme.titleTextAlign,
          style: AuthTheme.titleTextStyle,
        ),
        SizedBox(height: 10.0),
        Text(
          'TO RESET YOUR PASSWORD, \nPLEASE ENTER YOUR EMAIL ADDRESS.\nWE WILL SEND THE PASSWORD RESET INSTRUCTIONS \nTO THE EMAIL ADDRESS FOR THIS ACCOUNT.',
          textAlign: AuthTheme.subtitleTextAlign,
          style: AuthTheme.subtitleTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 50.0),
          child: LoginTextfieldWidget(
            controller: _emailController,
            hintText: 'EMAIL',
            obscureText: false,
            keyboardType: TextInputType.emailAddress,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // ! FUNCTION WHERE CHECKED CONTROLLERS VALUE AND DO SOMETHING
          },
          style: AuthTheme.submitButtonStyle,
          child: Text(
            'SUBMIT',
            textAlign: AuthTheme.sumbitButtonTextAlign,
            style: AuthTheme.sumbitButtonTextStyle,
          ),
        )
      ],
    );
  }
}
