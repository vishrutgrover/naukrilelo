import 'package:flutter/material.dart';
import 'package:naukrilelo/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  void handleButtonPressed() {
    // Add functionality for the button press here
    print("Button Pressed!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 255, 186),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ClipOval(
              //   child: Image.asset(
              //     'assets/logo.png', // Provide your logo image path here
              //     height: 100, // Adjust the height as needed
              //   ),
              // ),
              SizedBox(height: 20),
              Text(
                'NaukriLelo',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Days One',
                ),
              ),
              SizedBox(height: 10),
              Text(
                'The Perfect Career, for the Perfect You!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: 'Days One',
                ),
              ),
              SizedBox(height: 350),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignInPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 0, 0, 0),
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: Text(
                  'Get Started!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Days One',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
