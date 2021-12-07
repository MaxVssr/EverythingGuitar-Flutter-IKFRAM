import 'package:flutter/material.dart';

import '../models/color_scheme.dart';

class CourseChords extends StatefulWidget {
  @override
  _CourseChordsState createState() => _CourseChordsState();
}

class _CourseChordsState extends State<CourseChords> {
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
                        tag: "stratocaster",
                        child: Container(
                          height: 220,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'asset/images/stratocaster.png'))),
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
                        "Course Basic Chords",
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
                            "4.8 Star Rating",
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
                      "Example Stepping Stone Chords",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Here are 4 stepping-stone chord examples. These are easy guitar chords that most beginners can manage.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "‘A major’ is a chord that guitarists encounter early on in their guitar journey. It’s a common chord and while it’s not super difficult to play, it does pose a challenge for a total beginner who would prefer to be playing easy guitar chords. Below are 4 chords a beginner guitarist should be able to play.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Beginner chords every guitarist should be able to play:",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            courseWidget("a_major"),
                            courseWidget("c_major"),
                            courseWidget("d_major"),
                            courseWidget("g_major"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "The chords are the building blocks for your songs, they give you the harmony. The strumming delivers the rhythm and together they are the accompaniment for your or someone else’s singing voice which in turn provides the melody.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "The 8 chords every beginner guitar player should learn first are: C – A – G – E – D – Am – Em – Dm. (you can memorize the first 5 open major chords by the word CAGED)",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "With these chords alone you can play an endless amount of songs. For example there are about a zillion songs that use this chord progression: G – D – Em – C (also called the I – V – vi – IV progression).",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Songs like “You’re beautiful” by James Blunt, “With or without you” by U2 and “She will be loved” by Maroon 5 can all be played with just these 4 chords. Not all of these songs are originally in the key of G but you could easily fix that with the help of a capo and play it in the appropriate key.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container courseWidget(String img) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xff4d4d4d)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 800,
            margin: EdgeInsets.symmetric(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            ),
          ),
          Container(
            height: 180,
            width: 160,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('asset/images/$img.png'),
                  fit: BoxFit.fitHeight),
            ),
          ),
        ],
      ),
    );
  }
}
