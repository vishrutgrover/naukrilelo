import 'package:flutter/material.dart';
// import 'package:lawy/chatPage.dart';

class WhatWeDoPage extends StatefulWidget {
  @override
  _WhatWeDoPageState createState() => _WhatWeDoPageState();
}

class _WhatWeDoPageState extends State<WhatWeDoPage> {
  void handleButtonPressed() {
    // Add functionality for the button press here
    print("Continue button pressed!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 216, 255, 186),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontFamily: 'Days One Regular',
                    fontWeight:FontWeight.bold,
                  ),
                ),
                Text(
                  "NaukriLelo",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFF5661F6),
                    fontFamily: 'Days One Regular',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              "Your one-stop solution for finding your career...",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: 'Days One',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Find  ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 255, 183, 0),
                fontFamily: 'Days One',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "your perfect job mathc, with just a single search!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: 'Days One',
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Learn  ",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 255, 183, 0),
                fontFamily: 'Days One',
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "about relevant skillsets for your dream job!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.black,
                fontFamily: 'Days One',
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "And a lot  ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: 'Days One',
                  ),
                ),
                Text(
                  "more",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 255, 183, 0),
                    fontFamily: 'Days One',
                    fontWeight:FontWeight.bold,
                  ),
                ),
                Text(
                  "...",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontFamily: 'Days One',
                  ),
                ),
              ],
            ),
            SizedBox(height: 80),
            ElevatedButton(
              onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => ChatPage()),
                  // );
                },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF5661F6),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              ),
              child: Text(
                'Start Today!',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Days One',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
