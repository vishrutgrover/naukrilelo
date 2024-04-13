import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naukrilelo/home.dart';
// import 'package:naukrilelo/signup.dart';
import 'package:naukrilelo/accountCreation.dart';

class LoginPage1 extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage1> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE1E4FF),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      border: Border.all(color: Color(0xffE8ECF4), width: 3.0)),
                  child: Center(
                    child: TextButton(
                      onPressed: () => {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => HomePage()))
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 28,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.04,
                    top: MediaQuery.sizeOf(context).height * 0.03),
                child: Text(
                  'Welcome back!\nGlad to see you again!',
                  style: TextStyle(
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.04,
                    top: MediaQuery.sizeOf(context).height * 0.03),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFF2FEFF),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  height: 60,
                  width: 350,
                  child: TextField(
                    controller: _email,
                    decoration: const InputDecoration(
                        hintStyle: TextStyle(color: Colors.black45),
                        hintText: 'Enter your email',
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white70, width: 1))),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.04,
                    top: MediaQuery.sizeOf(context).height * 0.015),
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFF2FEFF),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  height: 60,
                  width: 350,
                  child: TextField(
                    controller: _pass,
                    decoration: const InputDecoration(
                        hintStyle: TextStyle(color: Colors.black45),
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white70, width: 1))),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.04,
                    top: MediaQuery.sizeOf(context).height * 0.01),
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password
                  },
                  child: Text(
                    "Forgot your password? ",
                    style: TextStyle(fontSize: 12.0, color: Color(0xFF1C18DF)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.04,
                    top: MediaQuery.sizeOf(context).height * 0.01),
                child: Center(
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Color(0xFF1C18DF),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.04,
                    top: MediaQuery.sizeOf(context).height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or Login With',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Urbanist',
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.sizeOf(context).width * 0.04,
                    top: MediaQuery.sizeOf(context).height * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 120, // Adjust width
                      height: 60, // Adjust height
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle logo button press
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Adjust border radius
                          ),
                          backgroundColor: Colors.white,
                        ),
                        child: SvgPicture.asset(
                          'assets/images/facebook.svg', // Path to your logo image asset
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(width: 50.0),
                    SizedBox(
                      width: 120, // Adjust width
                      height: 60, // Adjust height
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle logo button press
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Adjust border radius
                          ),
                          backgroundColor: Colors.white,
                        ),
                        child: SvgPicture.asset(
                          'assets/images/google.svg', // Path to your logo image asset
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.04,
                    top: MediaQuery.of(context).size.height * 0.05),
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountCreation()));
                    },
                    child: RichText(
                      text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(
                                fontFamily: 'Urbanist',
                                fontSize: 15.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                        TextSpan(
                            text: ' Register Now',
                            style: TextStyle(
                                fontFamily: 'Urbanist',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff1C18DF)))
                      ]),
                    ),
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
