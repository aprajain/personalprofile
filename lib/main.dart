import 'package:flutter/material.dart';
import 'info.dart';
import 'profilepage.dart';

void main() => runApp(MaterialApp(
      home: MyProfile(),
      debugShowCheckedModeBanner: false,
    ));

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  PageController pagePC = PageController(initialPage: 0);

  void pageChange() {
    pagePC.animateToPage(1,
        duration: Duration(milliseconds: 500),
        curve: Curves.fastLinearToSlowEaseIn);
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pagePC,
      //scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.pink,
          child: Info(
            function: pageChange,
          ),
        ),
        Container(
          color: Colors.cyan,
          child: ProfilePage(),
        ),
      ],
    );
  }
}
