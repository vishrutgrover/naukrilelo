import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:naukrilelo/accountCreation.dart';
import 'package:naukrilelo/home.dart';

class RegisterIntro extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
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
                    border: Border.all(color: Color(0xffE8ECF4), width: 3.0)
                  ),
                  child: Center(
                    child: TextButton(
                      onPressed: ()=>{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()))
                      },child: const Icon(Icons.arrow_back_ios_new, size: 28, color: Colors.black,),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.04, top: MediaQuery.sizeOf(context).height*0.03),
                child: Text('Hi, Welcome to NaukriLelo!!', style: TextStyle(color: Colors.black, fontFamily: 'Blinker', fontSize: 30, fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.04, top: MediaQuery.sizeOf(context).height*0.03),
                child: Container(
                  height: MediaQuery.sizeOf(context).height*0.5,
                  width: MediaQuery.sizeOf(context).width*0.83,
                  child: Text(
                    'Welcome to our platform, where opportunities meet aspirations!\n\nWe are thrilled to have you join us on this journey towards your dream career. At the heart of our app lies a cutting-edge recommendation system, meticulously designed to match your unique skills and aspirations with the perfect roles.\n\nFill out the form to embark on a personalized career journey, where every step brings you closer to your professional goals.',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal, fontFamily: 'Blinker'),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.04, top: MediaQuery.sizeOf(context).height*0.05),
                child: SizedBox(
                  height: 55.0,
                  child: ElevatedButton(
                    onPressed: ()=>
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> AccountCreation()))
                    },
                    child: Center(child: Text('Continue To Sign Up', style: TextStyle(color: Colors.white, fontFamily: 'Blinker', fontWeight: FontWeight.bold, fontSize: 25))),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff1C18DF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
                      side: BorderSide(width: 1.0, color: Color(0xff111C5B))
                    ), 
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width*0.04, top: MediaQuery.sizeOf(context).height*0.03),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'Already have an account?', style: TextStyle(fontFamily: 'Urbanist', fontSize: 15, fontWeight: FontWeight.normal, color: Colors.black)),
                        TextSpan(text: ' Login Now', style: TextStyle(fontFamily: 'Urbanist', fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xff1C18DF)))
                      ]
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffE1E4FF),
    );
  }
}