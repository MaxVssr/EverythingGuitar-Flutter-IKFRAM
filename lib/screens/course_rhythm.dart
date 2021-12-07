import 'package:flutter/material.dart';

import '../models/color_scheme.dart';

class CourseRhythm extends StatefulWidget {
  @override
  _CourseRhythmState createState() => _CourseRhythmState();
}

class _CourseRhythmState extends State<CourseRhythm> {
  int selectedDate = DateTime.now().day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7f4f5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 200,
                height: 260,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 200,
                        height: 240,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/images/iconBg.png'),
                                fit: BoxFit.contain)),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 20,
                      child: Hero(
                        tag: "jazzmaster",
                        child: Container(
                          height: 220,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'asset/images/jazzmaster.png'))),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Course Kinds of Strumming",
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'product'),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "English",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: darkBlue,
                            fontFamily: 'circe'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.star,
                                color: darkBlue,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "4.6 Star Rating",
                            style: TextStyle(fontFamily: 'circe'),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        'asset/images/palette.png'))),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Beginner",
                            style: TextStyle(fontFamily: 'circe'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(30),
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Introduction",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            fontFamily: 'product'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Our beginner guitar lessons will teach you how to master all guitar techniques you'll need to learn the guitar. Read up on the technical elements below, than head on over to our video lessons on beginner guitar songs to practice actually using these techniques.",
                        style: TextStyle(
                          fontFamily: 'circe',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Strumming",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            fontFamily: 'product'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Once you know your basic beginners chords, you’ll want to learn how to strum chords. This is the point where you actually start making real music, and you’ll see that its relatively easy. Actually, if you know 3-5 chords, you know how to change between them, and you learn how to strum, you can already play hundreds, if not thousands of songs.",
                        style: TextStyle(
                          fontFamily: 'circe',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Fingerpicking",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            fontFamily: 'product'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Fingerpicking the guitar is a must know for any guitarist, and is a technique the beginner guitar student should familiarize himself/herself with right at the beginning of learning how to play the guitar.",
                        style: TextStyle(
                          fontFamily: 'circe',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Guitar Harmonics",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            fontFamily: 'product'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "There are 3 types of harmonics: natural, artificial, and pinched. Harmonics are played every time you pluck a note, you just don’t  hear them most of the time. What you hear is the fundamental (sometimes called the first harmonic), which is the loudest sound you get when you simply play a fretted note. Nevertheless, it is accompanied by harmonics.",
                        style: TextStyle(
                          fontFamily: 'circe',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Guitar Tapping",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            fontFamily: 'product'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Tapping the guitar means you produce sounds by tapping the string at any fret, instead of plucking the strings. Tapping can be carried out with just one hand, or both hands at the same time, and can be used to give your music a more percussive feel, therefore rhythm and timing is very important.",
                        style: TextStyle(
                          fontFamily: 'circe',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Tremelo Picking",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                            fontFamily: 'product'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The tremolo picking style (also called scratch guitar) is nothing else, but alternate picking the string really, really fast. Heavy metal guitarists use it often, since it has a rather aggressive, harsh sound and feel to it.",
                        style: TextStyle(
                          fontFamily: 'circe',
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ]),
              ),
            ),
            // Container(
            //   color: Colors.white,
            //   child: Container(
            //     width: MediaQuery.of(context).size.width,
            //     padding: EdgeInsets.all(15),
            //     margin: EdgeInsets.only(bottom: 20, right: 30, left: 30),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.all(Radius.circular(10)),
            //         color: darkBlue),
            //     child: Center(
            //       child: Text(
            //         "Make an Appoinment",
            //         style: TextStyle(
            //             color: Colors.white,
            //             fontFamily: 'circe',
            //             fontWeight: FontWeight.w700,
            //             fontSize: 18),
            //       ),
            //     ),
            //   ),
            // )
          )
        ],
      ),
    );
  }
}
