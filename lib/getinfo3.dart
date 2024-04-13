import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naukrilelo/getinfo2.dart';
import 'package:naukrilelo/getinfo1.dart';

class GetInfo3 extends StatelessWidget {
  GetInfo3({super.key});

  final TextEditingController _job = TextEditingController();
  final TextEditingController _year = TextEditingController();
  final TextEditingController _role = TextEditingController();
  final TextEditingController _des = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1E4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Container(
        width: double.infinity, // Expand to fit the width of the screen
        height: double.infinity, // Expand to fit the height of the screen
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Discover Your Dream Job! Tell Us About Yourself and Let's Find the Perfect Fit.",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              // Chat Area container
              child: Container(
                width: double.infinity, // Expand to fit the width of the screen
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0), // Rounded top-left corner
                    topRight: Radius.circular(40.0),
                  ),
                  color: Color(0xFF5496FF),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30, bottom: 10),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFFF2FEFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          height: 60,
                          width: 350,
                          child: TextField(
                            controller: _job,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'Job experience',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white70, width: 1))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFFF2FEFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          height: 60,
                          width: 350,
                          child: TextField(
                            controller: _year,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'Years of working',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white70, width: 1))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFFF2FEFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          height: 60,
                          width: 350,
                          child: TextField(
                            controller: _role,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'Current role',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white70, width: 1))),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Color(0xFFF2FEFF),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          height: 60,
                          width: 350,
                          child: TextField(
                            controller: _des,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: '⁠Desired roles',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white70, width: 1))),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GetInfo1()),
                                );
                              },
                              child: Text('1'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GetInfo2()),
                                );
                              },
                              child: Text('2'),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GetInfo3()),
                                );
                              },
                              child: Text('3'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
