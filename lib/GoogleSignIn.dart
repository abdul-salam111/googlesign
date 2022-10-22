import 'package:flutter/material.dart';
import 'package:googlesign/AuthServices.dart';

class GoogleSignin extends StatefulWidget {
  const GoogleSignin({Key? key}) : super(key: key);

  @override
  State<GoogleSignin> createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignin> {
  AuthServices auth = AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: ElevatedButton(
      onPressed: () {
        auth.signinWithGoogle();
      },
      child: Text("Sign In with google"),
    )));
  }
}
