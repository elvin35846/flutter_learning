import 'package:bagzz_app_ui/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'NEW USER? ',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
            fontFamily: 'Work Sans',
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: () {
            // ! This function should be navigate to CREATE SCREEN
            Navigator.of(context).pushNamed(SignupScreen.routeName);
          },
          child: Text(
            'CREATE ACCOUNT',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 10,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
