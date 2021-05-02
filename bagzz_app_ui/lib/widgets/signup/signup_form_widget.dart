import 'package:bagzz_app_ui/theme/auth_theme.dart';
import 'package:bagzz_app_ui/widgets/login/login_textfield_widget.dart';
import 'package:flutter/material.dart';

class SignupFormWidget extends StatefulWidget {
  SignupFormWidget({Key? key}) : super(key: key);

  @override
  _SignupFormWidgetState createState() => _SignupFormWidgetState();
}

class _SignupFormWidgetState extends State<SignupFormWidget> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _fullnameController = TextEditingController();
  final _mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'SIGN UP',
          textAlign: AuthTheme.titleTextAlign,
          style: AuthTheme.titleTextStyle,
        ),
        SizedBox(height: 15.0),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 50.0),
          child: Column(
            children: [
              LoginTextfieldWidget(
                controller: _emailController,
                hintText: 'EMAIL',
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15.0),
              LoginTextfieldWidget(
                controller: _passwordController,
                hintText: 'PASSWORD',
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 15.0),
              LoginTextfieldWidget(
                controller: _confirmPasswordController,
                hintText: 'CONFIRM PASSWORD',
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 15.0),
              LoginTextfieldWidget(
                controller: _fullnameController,
                hintText: 'FULL NAME',
                obscureText: false,
                keyboardType: TextInputType.name,
              ),
              SizedBox(height: 15.0),
              LoginTextfieldWidget(
                controller: _mobileController,
                hintText: 'MOBILE NO.',
                obscureText: false,
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // ! FUNCTION WHERE CHECKED CONTROLLERS VALUE AND DO SOMETHING
          },
          style: AuthTheme.submitButtonStyle,
          child: Text(
            'REGISTER',
            textAlign: AuthTheme.sumbitButtonTextAlign,
            style: AuthTheme.sumbitButtonTextStyle,
          ),
        )
      ],
    );
  }
}
