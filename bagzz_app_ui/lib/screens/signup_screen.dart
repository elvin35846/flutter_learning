import 'package:bagzz_app_ui/theme/custom_app_bar_theme.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);
  static const routeName = '/signup';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // ! LOGIC INSIDE DRAWER
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This is the Drawer'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Close Drawer'),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: CustomAppBarTheme.backgroundColor,
        iconTheme: CustomAppBarTheme.iconTheme,
        elevation: CustomAppBarTheme.elevation,
        title: CustomAppBarTheme.title,
      ),
    );
  }
}
