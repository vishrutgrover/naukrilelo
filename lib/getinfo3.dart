import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naukrilelo/dashboard.dart';
import 'package:naukrilelo/getinfo2.dart';
import 'package:naukrilelo/getinfo1.dart';

class UserInfo {
  String name;
  int age;
  String gender;
  String cityOfResidence;
  String preferredCityOfEmployment;
  String qual;
  String college;
  String major;
  String job;
  String year;
  String role;
  String des;

  UserInfo({
    required this.name,
    required this.age,
    required this.gender,
    required this.cityOfResidence,
    required this.preferredCityOfEmployment,
    required this.qual,
    required this.college,
    required this.major,
    required this.job,
    required this.year,
    required this.role,
    required this.des,
  });
}

class GetInfo3 extends StatelessWidget {
  GetInfo3({required this.userInfo, Key? key}) : super(key: key);

  final TextEditingController _job = TextEditingController();
  final TextEditingController _year = TextEditingController();
  final TextEditingController _role = TextEditingController();
  final TextEditingController _des = TextEditingController();
  final UserInfo userInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1E4FF),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                border: Border.all(color: Color(0xffE8ECF4), width: 3.0)),
            child: Center(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  size: 28,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => GetInfo2(userInfo: userInfo,)));
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
                        padding: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width * 0.03,
                          top: MediaQuery.sizeOf(context).height * 0.05,
                          right: MediaQuery.sizeOf(context).width * 0.03,
                        ),
                        child: SizedBox(
                          height: 55.0,
                          child: ElevatedButton(
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()))
                            },
                            child: Center(
                                child: Text('Continue To Dashboard',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Blinker',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25))),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff1C18DF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                side: BorderSide(
                                    width: 1.0, color: Color(0xff111C5B))),
                          ),
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
