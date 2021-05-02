import 'dart:ui';

import 'package:bagzz_app_ui/widgets/login/login_footer_widget.dart';
import 'package:bagzz_app_ui/widgets/login/login_form_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  // ! Important!!! - ALL STYLES NEED TO REFACTOR
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ! Drawer paint a 'burger menu icon'
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
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        title: Text(
          'bagzz',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
            fontFamily: 'Playfair Display',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 100),
            height: MediaQuery.of(context).size.height - AppBar().preferredSize.height-140,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LoginFormWidget(),
                LoginFooterWidget(),
              ],
            ),
          ),
      ),
    );
  }
}
