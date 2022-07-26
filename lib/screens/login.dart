// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Start or Join a Meeting",
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 38.0),
          child: Image.asset("assets/images/onboarding.jpg"),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: customButton(
            text: 'Google Sign In',
            onPressed: () async {
              bool res = await _authMethods.signInWithGoogle(context);
              if (res) {
                Navigator.pushNamed(context, '/home');
              } else {
                Navigator.pushNamed(context, '/home');
              }
            },
          ),
        ),
        // ElevatedButton(
        //     onPressed: (() {
        //       print("jcdkjjn");
        //     }),
        //     style: ElevatedButton.styleFrom(minimumSize: Size(100, 40)),
        //     child: Text("Login"))
      ]),
    );
  }
}
