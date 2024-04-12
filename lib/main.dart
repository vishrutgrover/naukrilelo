import 'package:flutter/material.dart';
import 'package:naukrilelo/job.dart';
import 'package:naukrilelo/login.dart';
import 'package:naukrilelo/signup.dart';
import 'package:naukrilelo/what.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
    routes: {
      'SignIn': (context) => SignInPage(),
      'whatwedo': (context) => WhatWeDoPage(),
      'jobcarousel': (context) => CarouselDemo(),
    },
  ));
}
