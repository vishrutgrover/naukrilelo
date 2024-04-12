import 'package:flutter/material.dart';
import 'package:naukrilelo/job.dart';
import 'package:naukrilelo/login.dart';
import 'package:naukrilelo/signup.dart';
import 'package:naukrilelo/what.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const LoginPage(),
    routes: {
<<<<<<< HEAD
      'SignIn': (context) => const SignInPage(),
      'whatwedo': (context) => const WhatWeDoPage(),
=======
      'SignIn': (context) => SignInPage(),
      'whatwedo': (context) => WhatWeDoPage(),
      'jobcarousel': (context) => CarouselDemo(),
>>>>>>> 486645f (new stuff)
    },
  ));
}
