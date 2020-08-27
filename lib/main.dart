import 'package:flutter/material.dart';
import 'info.dart';
import 'profilepage.dart';

void main() => runApp(MaterialApp(
      home: MyProfile(),
    ));

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView(
      //scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.pink,
          child: Info(),
        ),
        Container(
          color: Colors.cyan,
          child: ProfilePage(),
        ),
        Container(
          color: Colors.deepPurple,
        ),
      ],
    );
  }
}
