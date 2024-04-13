import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE1E4FF),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04, top: MediaQuery.of(context).size.height * 0.05),
            child: Row(
              children: [
                ClipOval(
                  child: SvgPicture.asset(
                    'assets/images/profile.svg',
                    fit: BoxFit.cover,
                    width: 70.0,
                    height: 70.0,
                  ),
                ),
                SizedBox(width: 20),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(text: 'Welcome, ', style: TextStyle(fontSize: 18.0, fontFamily: 'Blinker', fontWeight: FontWeight.normal, color: Colors.black)),
                      TextSpan(text: '\n{Username}', style: TextStyle(fontSize: 18.0, fontFamily: 'Blinker', fontWeight: FontWeight.bold, color: Colors.black))
                    ],
                  ),
                ),
                SizedBox(width: 20),
                ClipOval(
                  child: Image.asset(
                    'assets/images/bell.png',
                    fit: BoxFit.cover,
                    width: 50.0,
                    height: 50.0,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.03, right: MediaQuery.of(context).size.width * 0.03),
            child: Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height * 0.04,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Icon(Icons.search_outlined, size: 28.0, color: Colors.black),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Color(0xff989898)),
                        ),
                        textAlign: TextAlign.start,
                        textAlignVertical: TextAlignVertical.center,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.tune, size: 28.0, color: Colors.black)
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.03, right: MediaQuery.of(context).size.width * 0.03),
            child: Row(
              children: [
                Text('Job Recommendations:', style: TextStyle(fontFamily: 'Blinker', fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),),
                Spacer(),
                Text('See All', style: TextStyle(fontFamily: 'Blinker', fontWeight: FontWeight.normal, fontSize: 20, color: Color(0xff1C18E0)))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.03, right: MediaQuery.of(context).size.width * 0.03),
            // child: ListView(
            //   scrollDirection: Axis.horizontal,

            // )
          ),
        ],
      ),
    );
  }
}
