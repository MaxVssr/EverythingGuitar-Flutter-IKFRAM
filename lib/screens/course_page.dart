import 'package:flutter/material.dart';

import '../models/color_scheme.dart';

class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
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
                        tag: "telecaster",
                        child: Container(
                          height: 220,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'asset/images/telecaster.png'))),
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
                        "Course Guitar Elements",
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
                            "4.9 Star Rating",
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
                      "Generally speaking, there are two types of guitars: acoustic and electric. Luthiers, or guitar makers, build acoustic guitars so they can be played without amplification. Electric guitars require an amplifier to produce a sound loud enough to hear well.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height:15),
                    Text(
                      "Schematics for acoustic and electric:",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            courseWidget("acoustic_components"),
                            courseWidget("electric_components"),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Bridge",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "The area on the top of the guitar where the strings meet, or are connected to the face. The strings may start at the bridge or they may only be supported by it depending on the guitar. To be able to finely adjust the tone, most electric guitars allow the bridge to be raised or lowered typically by adjusting screws",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Saddle",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "A saddle is a piece of plastic or polished bone that is used for the string to rest on, and is used on most acoustic guitars. The smoothness prevents the guitar from buzzing, and can also be used for very fine tuning.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Fretboard",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Also referred to as fingerboard, the fretboard is found on the face of the neck and is constructed of hard woods. Most fretboards have inlays (position markers) on the 3rd, 5th, 7th, 9th and 12th frets.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Frets",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Are metal wires built vertically onto the guitar neck and fretboard. The number of frets varies by guitar. Strings are pressed down behind a fret to change the note that the string will produce. Most commonly, guitars come with medium frets, where you have to press the string down to the fretboard to be able to hear a sound. Jumbo frets are, in contrast, taller, so you don’t need to press down till the fretboard. The first fret is the one nearest the nut.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Headstock",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "The headstock lies at the end of the guitar neck. Its major role I to support the tuners, thus is the place where the strings are tuned. Many guitar brands have developed distinctive headstock shapes, so the headstock can be a very beautiful part of the guitar.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Neck",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Is The long narrow part of the guitar located between the body and the headstock. It can be constructed of a single piece of wood, or several pieces of wood cut and glued together. The fretboard is attached onto the upper side of the neck. Most acoustic guitar necks are glued to the body (referred to as set neck), others are bolted on (usually on electric guitars)",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Nut",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Is the point on the guitar neck, often referred to as fret 0, where the strings touch the neck and pass though into the tuners on the headstock.It’s main function is to maintain proper string spacing. The nut and saddle are usually made of similar material on acoustic guitars. Electric guitars commonly use plastic, synthetics, and sometimes metal nuts.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Pickup Guard",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Is a flat piece of plastic on the face of the guitar body. It prevents the body from being scratched by your plectrum during play. Some elect guitars have raised pick guards, which direct your plectrum out and away from the volume and tone knobs.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Pickup Switch",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "A switch on the body of electric guitars, which is used to select different pickups.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Pickups",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Only found on electric guitars, a pickup is actually a magnet wrapped in wires (electromagnet) on the face of an electric guitar, directly underneath the strings. The vibration of the strings interfere with the magnetic field of the pickup. This impulse is sent to the amplifier to be modified. So the pickup, in every sense of the word, literally picks up the vibration of the strings. A guitar usually has between 1 and 4 pickups, 2 being the most common.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Soundhole",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "A hole on the body of the acoustic, or electro-acoustic guitar, where the sound waves made by the strings and resonated in the body, exits the body. Acoustic guitars have round sound holes.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Soundhole",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          fontFamily: 'product'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "A hole on the body of the acoustic, or electro-acoustic guitar, where the sound waves made by the strings and resonated in the body, exits the body. Acoustic guitars have round sound holes.",
                      style: TextStyle(
                        fontFamily: 'circe',
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
      height: 400,
      width: 300,
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
              height: 360,
              width: 300,
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
