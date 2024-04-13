import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naukrilelo/register_intro.dart';

class AccountCreation extends StatelessWidget {
  AccountCreation({super.key});

  final TextEditingController _email = TextEditingController();
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffE1E4FF),
      body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 60,
                    decoration: BoxDecoration(
                        color: Color(0xffFFFFFF),
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        border: Border.all(color: Color(0xffE8ECF4), width:3.0),
                    ),
                    child: Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterIntro()));
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 28,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Create an account!",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffF2FEFF),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    height: 60,
                    width: 350,
                    child: TextField(
                      controller: _email,
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Color(0xff6093D0)),
                          hintText: 'Enter your email',
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white70, width: 1))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffF2FEFF),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    height: 60,
                    width: 350,
                    child: TextField(
                      controller: _username,
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Color(0xff6093D0)),
                          hintText: 'Enter your username',
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white70, width: 1))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffF2FEFF),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    height: 60,
                    width: 350,
                    child: TextField(
                      obscureText: true,
                      controller: _password,
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Color(0xff6093D0)),
                          hintText: 'Enter your password',
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            size: 20,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white70, width: 1))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffF2FEFF),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    height: 60,
                    width: 350,
                    child: TextField(
                      controller: _confirmPassword,
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Color(0xff6093D0)),
                          hintText: 'Confirm your password',
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            size: 20,
                            color: Colors.black,
                          ),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.6))),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Or Sign Up",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            border: Border.all(color: Colors.grey, width: 0.5)),
                        height: 60,
                        width: 120,
                        child: TextButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                              "assets/images/facebook.svg",
                              width: 120,
                              height: 45,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                            border: Border.all(color: Colors.grey, width: 0.5)),
                        height: 60,
                        width: 120,
                        child: TextButton(
                            onPressed: () {},
                            child: SvgPicture.asset(
                              "assets/images/google.svg",
                              width: 120,
                              height: 45,
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Color(0xff1C18DF),
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Continue To Form",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                    const SizedBox(
                      width: 3,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Login Now",
                          style: TextStyle(color: Color(0xff1C18DF), fontSize: 14),
                        ))
                  ],
                )
              ],
            )),
      ),
    );
  }
}
