import 'package:flutter/material.dart';
import 'package:naukrilelo/signup.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

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
<<<<<<< HEAD
      backgroundColor: const Color.fromARGB(255, 216, 255, 186),
      body: SafeArea(
        child: Center(
=======
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/back.jpg'),
              fit: BoxFit.cover, // Adjust this according to your needs
            ),
          ),
>>>>>>> 486645f (new stuff)
          child: Column(
            children: [
<<<<<<< HEAD
              // ClipOval(
              //   child: Image.asset(
              //     'assets/logo.png', // Provide your logo image path here
              //     height: 100, // Adjust the height as needed
              //   ),
              // ),
              const SizedBox(height: 20),
              const Text(
                'NaukriLelo',
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Days One',
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'The Perfect Career, for the Perfect You!',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontFamily: 'Days One',
                ),
              ),
              const SizedBox(height: 350),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignInPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                child: const Text(
                  'Get Started!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'Days One',
=======
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 150),
                  Text(
                    'NaukriLelo',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Days One',
                    ),
>>>>>>> 486645f (new stuff)
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
                  SizedBox(height: 100),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
