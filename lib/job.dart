import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselDemo extends StatefulWidget {
  @override
  _CarouselDemoState createState() => _CarouselDemoState();
}

class _CarouselDemoState extends State<CarouselDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/user_icon.png'), // Provide your image path here
          ),
          SizedBox(height: 10),
          Text(
            'Good Morning',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          // User Name
          Text(
            'John Doe', // Replace 'John Doe' with the user's name
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 40),
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
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Slide 1',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Slide 2',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Slide 3',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
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
                color: Colors.red,
                child: Center(
                  child: Text(
                    'Slide 1',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Slide 2',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Slide 3',
                    style: TextStyle(fontSize: 32, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
