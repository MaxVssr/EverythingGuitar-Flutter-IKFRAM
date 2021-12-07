import 'package:EverythingGuitar/screens/course_power_chords.dart';
import 'package:EverythingGuitar/screens/course_rhythm.dart';
import 'package:flutter/material.dart';

import '../models/color_scheme.dart';
import '../screens/course_chords.dart';
import '../screens/course_page.dart';
import '../screens/settings_screen.dart';
import '../widgets/main_drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
      routes: {
        '/CoursePage': (context) => CoursePage(),
        '/HomePage': (context) => HomePage(),
        '/settings': (context) => SettingsScreen(),
        '/ChordsPage': (context) => CourseChords(),
        '/RhythmPage': (context) => CourseRhythm(),
        '/PowerChordPage': (context) => CoursePowerChords(),
      },
    );
  }
}

// ignore: camel_case_types
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

// ignore: camel_case_types
class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        iconTheme: new IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("asset/images/searchBg.png"))),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: TextStyle(fontSize: 16, fontFamily: 'circe'),
                  ),
                  Text(
                    "Jeroen",
                    style: TextStyle(
                        fontSize: 30,
                        fontFamily: 'circe',
                        fontWeight: FontWeight.w700),
                  ),
                  Expanded(child: Container()),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Expanded(
                          child: TextField(
                            style: TextStyle(fontSize: 18, fontFamily: 'circe'),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search for Courses"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Rated Courses",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          elementWidget(
                            "telecaster", 
                            "Course Guitar Elements",
                            "English", 
                            "1/5", 
                            "Acoustic"
                          ),
                          chordsWidget(
                            "stratocaster", 
                            "Course Basic Chords",
                              "English", 
                              "1/5", 
                              "Acoustic"
                            ),
                          rhythmWidget(
                              "jazzmaster",
                              "Course Kinds of Strumming",
                              "English",
                              "2/5",
                              "Acoustic"
                            ),
                          powerChordWidget(
                            "gibson", 
                            "Course Power Chords",
                            "English", 
                            "3/5", 
                            "Electric"
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  InkWell elementWidget(
      String img, String name, String lang, String dif, String type) {
    return InkWell(
      onTap: openElementsPage,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: lightBlue.withOpacity(0.5)),
        child: Row(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/images/iconBgNew.png'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Container(
                    height: 130,
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.star,
                              color: darkBlue,
                              size: 60,
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Text(
                              "4.9",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: Hero(
                      tag: img,
                      child: Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('asset/images/$img.png'),
                          // fit: BoxFit.cover
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Dificulty $dif",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Language: $lang',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: darkBlue),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Type: $type",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell chordsWidget(
      String img, String name, String lang, String dif, String type) {
    return InkWell(
      onTap: openChordsPage,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: lightBlue.withOpacity(0.5)),
        child: Row(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/images/iconBgNew.png'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Container(
                    height: 130,
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.star,
                              color: darkBlue,
                              size: 60,
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Text(
                              "4.8",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: Hero(
                      tag: img,
                      child: Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('asset/images/$img.png'),
                          // fit: BoxFit.cover
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Dificulty $dif",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Language: $lang',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: darkBlue),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Type: $type",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell rhythmWidget(
      String img, String name, String lang, String dif, String type) {
    return InkWell(
      onTap: openRhythmPage,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: lightBlue.withOpacity(0.5)),
        child: Row(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/images/iconBgNew.png'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Container(
                    height: 130,
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.star,
                              color: darkBlue,
                              size: 60,
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Text(
                              "4.6",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: Hero(
                      tag: img,
                      child: Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('asset/images/$img.png'),
                          // fit: BoxFit.cover
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Dificulty $dif",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Language: $lang',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: darkBlue),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Type: $type",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  InkWell powerChordWidget(
      String img, String name, String lang, String dif, String type) {
    return InkWell(
      onTap: openPowerChordPage,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: lightBlue.withOpacity(0.5)),
        child: Row(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(30)),
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/images/iconBgNew.png'),
                              fit: BoxFit.contain)),
                    ),
                  ),
                  Container(
                    height: 130,
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: RotatedBox(
                            quarterTurns: 2,
                            child: Icon(
                              Icons.star,
                              color: darkBlue,
                              size: 60,
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Text(
                              "4.5",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: Hero(
                      tag: img,
                      child: Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/images/$img.png'))),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Dificulty $dif",
                          style: TextStyle(fontSize: 10, color: Colors.grey),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Language: $lang',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: darkBlue),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Type: $type",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openElementsPage() {
    Navigator.pushNamed(context, '/CoursePage');
  }

  void openChordsPage() {
    Navigator.pushNamed(context, '/ChordsPage');
  }

  void openRhythmPage() {
    Navigator.pushNamed(context, '/RhythmPage');
  }

  void openPowerChordPage() {
    Navigator.pushNamed(context, '/PowerChordPage');
  }
}
