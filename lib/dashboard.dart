import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';


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
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.04, top: MediaQuery.of(context).size.height * 0.01),
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
            padding: EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.03, top: MediaQuery.of(context).size.height * 0.03, right: MediaQuery.of(context).size.width * 0.03, bottom:MediaQuery.of(context).size.height * 0.03),
            child: Row(
              children: [
                Text('Job Recommendations:', style: TextStyle(fontFamily: 'Blinker', fontWeight: FontWeight.bold, fontSize: 24, color: Colors.black),),
                Spacer(),
                Text('See All', style: TextStyle(fontFamily: 'Blinker', fontWeight: FontWeight.normal, fontSize: 20, color: Color(0xff1C18E0)))
              ],
            ),
          ),
          SizedBox(width: 20),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              // autoPlay: true,
              // autoPlayInterval: Duration(seconds: 3),
              // autoPlayAnimationDuration: Duration(milliseconds: 800),
              pauseAutoPlayOnTouch: true,
              enlargeCenterPage: true,
            ),
            items: [
              Container(
                color: Color(0xff111C5B),
                child:
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Text('Junior Data Analyst', style: TextStyle(fontFamily: 'Urbanist', fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                            Spacer(),
                            Icon(Icons.bookmark_border, size: 28, color: Colors.white,)
                          ],
                        ),
                        Row(
                          children: [
                            Text('₹1,30,000 - ₹1,60,000/year', style: TextStyle(fontFamily: 'Blinker', fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white), textAlign: TextAlign.left,),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Python', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Colors.white),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3.0)
                              ),
                            ),
                            SizedBox(width: 7.0),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Data Visualization', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Colors.white),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3.0)
                              ),
                            ),
                            SizedBox(width: 7.0,),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('SQL', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Colors.white),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3.0)
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 4.0,),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Fresher', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Colors.white),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3.0)
                              ),
                            ),
                            SizedBox(width: 7.0,),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Onsite', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Colors.white),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3.0)
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.0,),
                        Row(
                          children: [
                            Text('know more...', style: TextStyle(fontFamily: 'Urbanist', fontSize: 10, fontWeight: FontWeight.w300, color: Colors.grey),)
                          ],
                        ),
                        SizedBox(height: 4.0,),
                        Row(
                          children: [
                            ClipOval(child: Image.asset('assets/images/amazon_logo.jpg', fit: BoxFit.contain, height: 50.0, width: 50.0,)),
                            SizedBox(width: 16.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Amazon.com, Inc.', style: TextStyle(fontFamily: 'Blikner', fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                                Text('Gurgaon', style: TextStyle(fontFamily: 'Blikner', fontSize: 14, fontWeight: FontWeight.normal, color: Colors.grey),),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
              ),
              Container(
                color: Color(0xffFFFFFF),
                child:
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Text('Dev Ops', style: TextStyle(fontFamily: 'Urbanist', fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff111C5B))),
                            Spacer(),
                            Icon(Icons.bookmark_border, size: 28, color: Color(0xff111C5B),)
                          ],
                        ),
                        Row(
                          children: [
                            Text('₹20,000 - ₹80,000/year', style: TextStyle(fontFamily: 'Blinker', fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xff111C5B)), textAlign: TextAlign.left,),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Unity', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Color(0xff111C5B)),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 3.0)
                              ),
                            ),
                            SizedBox(width: 7.0),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('C#', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Color(0xff111C5B)),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 3.0)
                              ),
                            ),
                            SizedBox(width: 7.0,),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Graphic Design', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Color(0xff111C5B)),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 3.0)
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 4.0,),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('2 Years Experience', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Color(0xff111C5B)),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 3.0)
                              ),
                            ),
                            SizedBox(width: 4.0,),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Remote', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Color(0xff111C5B)),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 3.0)
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.0,),
                        Row(
                          children: [
                            Text('know more...', style: TextStyle(fontFamily: 'Urbanist', fontSize: 10, fontWeight: FontWeight.w300, color: Colors.black),)
                          ],
                        ),
                        SizedBox(height: 4.0,),
                        Row(
                          children: [
                            ClipOval(child: Image.asset('assets/images/epic_logo.png', fit: BoxFit.fill, height: 50.0, width: 50.0,)),
                            SizedBox(width: 16.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Epic Games', style: TextStyle(fontFamily: 'Blikner', fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xff111C5B)),),
                                Text('Bengaluru', style: TextStyle(fontFamily: 'Blikner', fontSize: 14, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 61, 61, 61)),),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
              ),
              Container(
                color: Color(0xff111C5B),
                child:
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: [
                            Text('Dev Ops', style: TextStyle(fontFamily: 'Urbanist', fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xffFFFFFF))),
                            Spacer(),
                            Icon(Icons.bookmark_border, size: 28, color: Color(0xffFFFFFF),)
                          ],
                        ),
                        Row(
                          children: [
                            Text('₹30,000 - ₹50,000/year', style: TextStyle(fontFamily: 'Blinker', fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xffFFFFFF)), textAlign: TextAlign.left,),
                          ],
                        ),
                        SizedBox(height: 10.0,),
                        Row(
                          children: [
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('CI/CD Pipelines', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3.0)
                              ),
                            ),
                            SizedBox(width: 7.0),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Azure', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3.0)
                              ),
                            ),
                            SizedBox(width: 7.0,),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('AWS', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3.0)
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 4.0,),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Fresher', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3.0)
                              ),
                            ),
                            SizedBox(width: 4.0,),
                            Container(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text('Docker', style: TextStyle(fontFamily: 'Blinker', fontSize:12, fontWeight: FontWeight.w400, color: Color(0xffFFFFFF)),),
                              ),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white, width: 3.0)
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.0,),
                        Row(
                          children: [
                            Text('know more...', style: TextStyle(fontFamily: 'Urbanist', fontSize: 10, fontWeight: FontWeight.w300, color: Colors.grey),)
                          ],
                        ),
                        SizedBox(height: 7.0,),
                        Row(
                          children: [
                            ClipOval(child: Image.asset('assets/images/google_logo.png', fit: BoxFit.fill, height: 50.0, width: 50.0,)),
                            SizedBox(width: 16.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Google Inc.', style: TextStyle(fontFamily: 'Blikner', fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xffFFFFFF)),),
                                Text('Noida', style: TextStyle(fontFamily: 'Blikner', fontSize: 14, fontWeight: FontWeight.normal, color: const Color.fromARGB(255, 61, 61, 61)),),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.03,
                top: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.width * 0.03,
                bottom: MediaQuery.of(context).size.height * 0.03),
            child: Row(
              children: [
                Text(
                  'Course Recommendations:',
                  style: TextStyle(
                      fontFamily: 'Blinker',
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                ),
                Spacer(),
                Text('See All',
                    style: TextStyle(
                        fontFamily: 'Blinker',
                        fontWeight: FontWeight.normal,
                        fontSize: 20,
                        color: Color(0xff1C18E0)))
              ],
            ),
          ),
          SizedBox(width: 20),
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              // autoPlay: true,
              // autoPlayInterval: Duration(seconds: 3),
              // autoPlayAnimationDuration: Duration(milliseconds: 800),
              pauseAutoPlayOnTouch: true,
              enlargeCenterPage: true,
            ),
            items: [
              Container(
                color: Colors.blue,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/deeplearn.png",
                                height: 96),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Deep Learning",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Specialization",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "By DeepLearning.AI",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Skills",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "Deep Learning\nTensorFlow\nNeural Networks",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Learn More",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/deeplearn.png",
                                height: 96),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Machine Learning",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Specialization",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "By DeepLearning.AI",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Skills",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "Machine Learning\nTensorFlow\nRecommendation Systems",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Learn More",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/deeplearn.png",
                                height: 96),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Machine Learning",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Specialization",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "By DeepLearning.AI",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Skills",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Text(
                                  "Machine Learning\nTensorFlow\nRecommendation Systems",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3),
                            Text(
                              "Learn More",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                // Add your home icon functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.emoji_events),
              onPressed: () {
                // Add your trophy icon functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.menu_book),
              onPressed: () {
                // Add your open book icon functionality here
              },
            ),
            IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                // Add your user icon functionality here
              },
            ),
          ],
        ),
      ),
    );
  }
}