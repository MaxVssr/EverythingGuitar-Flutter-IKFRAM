import 'package:flutter/material.dart';

import '../models/color_scheme.dart';
import '../widgets/main_drawer.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: new IconThemeData(color: Colors.black),
          backgroundColor: lightBlue,
        ),
        drawer: MainDrawer(),
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'Settings will be added in future updates!',
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.title,
          ),
        ),
      ]),
    );
  }
}
