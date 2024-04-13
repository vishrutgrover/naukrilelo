import 'package:flutter/material.dart';
import 'package:naukrilelo/accountCreation.dart';
import 'package:naukrilelo/getinfo2.dart';

class UserInfo {
  final String name;
  final int age;
  final String gender;
  final String cityOfResidence;
  final String preferredCityOfEmployment;
  // final String qual;
  // final String college;
  // final String major;

  UserInfo({
    required this.name,
    required this.age,
    required this.gender,
    required this.cityOfResidence,
    required this.preferredCityOfEmployment,
    // required this.qual,
    // required this.college,
    // required this.major
  });
}

class GetInfo1 extends StatelessWidget {
  GetInfo1({Key? key}) : super(key: key);

  final TextEditingController _name = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _gender = TextEditingController();
  final TextEditingController _cityofres = TextEditingController();
  final TextEditingController _pref = TextEditingController();

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
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12)),
                border: Border.all(color: Color(0xffE8ECF4), width: 3.0)),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_new),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AccountCreation()));
                  // Handle back button press
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
                            controller: _name,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'Enter your name',
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
                            controller: _age,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'Enter your age',
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
                            controller: _gender,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'Enter your gender',
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
                            controller: _cityofres,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'City of residence',
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
                            controller: _pref,
                            decoration: const InputDecoration(
                                hintStyle: TextStyle(color: Colors.black45),
                                hintText: 'Preferred city of employment',
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white70, width: 1))),
                          ),
                        ),
                      ),
                      SizedBox(height: 40.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: ElevatedButton(
                            onPressed: () {
                              String name = _name.text;
                              int age = int.tryParse(_age.text) ?? 0;
                              String gender = _gender.text;
                              String cityOfResidence = _cityofres.text;
                              String preferredCityOfEmployment = _pref.text;

                              UserInfo userInfo = UserInfo(
                                name: name,
                                age: age,
                                gender: gender,
                                cityOfResidence: cityOfResidence,
                                preferredCityOfEmployment:
                                    preferredCityOfEmployment,
                              );

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          GetInfo2(userInfo: userInfo)));
                            },
                            child: Text('Continue To Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Blinker',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25)),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff1C18DF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)),
                                side: BorderSide(
                                    width: 1.0, color: Color(0xff111C5B)))),
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
