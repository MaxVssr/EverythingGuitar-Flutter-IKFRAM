import 'package:EverythingGuitar/widgets/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/color_scheme.dart';
import '../widgets/authentication_service.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'circe',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: lightBlue,
            child: Text('Menu',
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    color: Colors.black)),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile('Courses', Icons.music_note, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          buildListTile('Settings', Icons.settings, () {
            Navigator.of(context).pushReplacementNamed('/settings');
          }),
          SizedBox(height: 300),
          buildListTile('Sign Out', Icons.exit_to_app, () {
            context.read<AuthenticationService>().signOut();
          })
        ],
      ),
    );
  }
}
