import 'package:flutter/material.dart';
import 'package:naukrilelo/getinfo1.dart';
import 'package:naukrilelo/getinfo3.dart';


class UserInfo {
  String name;
  int age;
  String gender;
  String cityOfResidence;
  String preferredCityOfEmployment;
  String qual;
  String college;
  String major;

  UserInfo({
    required this.name,
    required this.age,
    required this.gender,
    required this.cityOfResidence,
    required this.preferredCityOfEmployment,
    required this.qual,
    required this.college,
    required this.major,
  });
}

class GetInfo2 extends StatelessWidget {
  
  final TextEditingController _qual = TextEditingController();
  final TextEditingController _college = TextEditingController();
  final TextEditingController _major = TextEditingController();
  final UserInfo userInfo;

  GetInfo2({required this.userInfo, Key? key}) : super(key: key);

  void updateUserInfo() {
    userInfo.qual = _qual.text;
    userInfo.college = _college.text;
    userInfo.major = _major.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1E4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: Color(0xffE8ECF4), width: 3.0)
            ),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new, size: 28, color: Colors.black,),
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => GetInfo1()));
                },
              ),
            ),
          ),
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
                            controller: _qual,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'Highest qualification',
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
                            controller: _college,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'College',
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
                            controller: _major,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'Major',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white70, width: 1))),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: ElevatedButton(
                          onPressed: ()
                          {
                            updateUserInfo();
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>GetInfo3(userInfo: userInfo)));
                          },
                          child: Text('Continue To Sign Up', style: TextStyle(color: Colors.white, fontFamily: 'Blinker', fontWeight: FontWeight.bold, fontSize: 25)), 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff1C18DF),
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                            side: BorderSide(width: 1.0, color: Color(0xff111C5B)))
                        ),
                      )
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
