// ignore_for_file: file_names

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zameen/screens/signin_screen.dart';
import 'package:zameen/screens/signup_screen.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({Key? key}) : super(key: key);

  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  bool showSignIn = true;

  toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  void initState() {
    Firebase.initializeApp().whenComplete(() {
      setState(() {
        print("complete");
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return showSignIn ? SignIn(toggleView()) : SignUp(toggleView());
  }
}
