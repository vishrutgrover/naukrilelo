import 'package:flutter/material.dart';
import 'package:naukrilelo/login.dart';
import 'package:naukrilelo/signup.dart';
import 'package:naukrilelo/what.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const LoginPage(),
    routes: {
      'SignIn': (context) => const SignInPage(),
      'whatwedo': (context) => const WhatWeDoPage(),
    },
    // Ma chuda
  ));
}
