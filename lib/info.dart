import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  final function;
  Info({this.function});

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
              padding: EdgeInsets.all(5),
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
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black87,
                ),
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.black87,
              ),
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
            SizedBox(height: 35.0),
            GestureDetector(
              onTap: widget.function,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.3,
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.cyan[100],
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.cyan[100],
                ),
                child: Row(
                  children: [
                    SizedBox(width: 14),
                    Text(
                      'Tap',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Icon(Icons.person),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
