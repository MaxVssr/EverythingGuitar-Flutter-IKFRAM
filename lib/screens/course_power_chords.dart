import 'package:flutter/material.dart';

import '../models/color_scheme.dart';

class CoursePowerChords extends StatefulWidget {
  @override
  _CoursePowerChordsState createState() => _CoursePowerChordsState();
}

class _CoursePowerChordsState extends State<CoursePowerChords> {
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
                        tag: "gibson",
                        child: Container(
                          height: 220,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('asset/images/gibson.png'))),
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
                        "Course Power Chords",
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
                            "4.5 Star Rating",
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
                            "Intermediate",
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
                      "The primal feelings that derive from strumming power chords on a guitar that’s plugged into a great sounding amp or distortion, is what makes you wanna play the instrument over and over again. Add a drummer and bass player on top of that experience and superb feelings of euphoria will unfold.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Power chords are indeed powerful and that’s why they are mainly used in rock music, metal or any type of music that consists of electric guitars and distortion. However during the 90s a lot of rock bands started shifting the power chords to the acoustic guitars due to the MTV’s unplugged series, which set the stage for a new area on the acoustic guitar.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "The power chord is a fairly easy chord to play, especially on an electric guitar or when played higher up the neck. It’s a moveable chord shape, that can be played in every key just by moving it up and down the fretboard (explained later).",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "This is why a lot of guitar players love to play rock music. The use of just one chord shape moving around the guitar neck throughout the entire song makes playing rhythm guitar quite accessible for the eager rock beginners.",
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
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      // padding: EdgeInsets.only(bottom: 200),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            courseWidget("g_powerchord"),
                            courseWidget("a_powerchord"),
                            courseWidget("b_powerchord"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "The first chord on the left in the diagram below is a C power chord. It’s the same chord shape as above, only the entire chord is moved up one string, so now the root note is located on the 3rd fret, A-string which is a “C” note, hence the name C5.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "The same thing here applies, you can move the chord up and down the fretboard. Every time the root note determines the name of the chord. The root note from the second chord is located on the 5th fret A-string (5th string), which is a “D” note, so it’s a D5. And the power chord on the right starting on the 7th fret is an E5.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "This time make sure the Low E-string, B and high E-string are muted. So how do you mute the Low E-string? Press the root note with your index finger on the A-string, and simultaneously try to lean the tip of that index finger against the string above it, so you don’t hear that Low E-string. You could also try to get your thumb from behind the neck to lean over the neck onto the Low E-string. Just a slight touch is enough to mute the sound of that string.",
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
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 180,
              width: 160,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/$img.png'),
                    fit: BoxFit.fitHeight),
              ),
            ),
          )
        ],
      ),
    );
  }
}
