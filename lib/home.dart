// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:naukrilelo/actuallogin.dart';
import 'package:naukrilelo/register_intro.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE1E4FF),
      body: Padding(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: MediaQuery.sizeOf(context).height*0.12),
        child: Column(
          children: <Widget>[
            SvgPicture.asset('assets/images/newer_logo.svg', height: 400.0),
            SizedBox(height: 20.0,),
            SizedBox(
              height: 55.0,
              child: ElevatedButton(
                child: Center(
                    child: Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 25,
                      fontWeight: FontWeight.w900, color: Colors.white),
                )),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage1()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Color(0xff1C18E0),
                  side: BorderSide(width: 1.0, color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 15.0),
            SizedBox(
              height: 55.0,
              child: ElevatedButton(
                child: Center(
                    child: Text(
                  'Sign Up',
                  style: TextStyle(
                      fontFamily: 'Urbanist',
                      fontSize: 20,
                      fontWeight: FontWeight.w600, color: Color(0xff1E232C)),
                )),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterIntro()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  backgroundColor: Color(0xffFFFFFF),
                  side: BorderSide(width: 1.0, color: Colors.black)
                ),
              ),
            ),
            SizedBox(height: 25.0),
            Text('Continue as a guest', style: TextStyle(color: Color(0xff1C18DF), decoration: TextDecoration.underline, fontWeight: FontWeight.bold, fontSize: 17),)
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
    );
  }
}
