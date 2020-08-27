import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black87,
                  width: 5.0,
                ),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage('images/mypic1.jpg'),
                radius: 90.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              'Apra Jain',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'Rufina',
              ),
            ),
            SizedBox(height: 12.5),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black87,
                ),
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black87,
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Conatus Trainee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Comfortaa',
                  ),
                ),
              ),
            ),
            SizedBox(height: 35.0),
            RaisedButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              icon: Icon(Icons.person),
              label: Text(
                'See Profile',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              color: Colors.teal[100],
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
            ),
          ],
        ),
      ),
    );
  }
}
