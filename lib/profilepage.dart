import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Widget customRow(IconData icon, title, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.lightBlue[200],
            size: 21.0,
          ),
          SizedBox(width: 6.0),
          Text(
            title,
            style: TextStyle(
              color: Colors.black45,
              letterSpacing: 2.0,
              fontSize: 18.0,
            ),
          ),
          Spacer(),
          Text(
            value,
            style: TextStyle(
              color: Colors.grey[800],
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget skills(value) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.lightBlue[200],
            radius: 6.0,
          ),
          SizedBox(width: 10),
          Text(
            value,
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w400,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget headers(title) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      width: double.infinity,
      color: Colors.grey[400],
      child: Text(
        title,
        style: TextStyle(
          color: Colors.blueGrey[800],
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Comfortaa',
        ),
      ),
    );
  }

  Widget divider() {
    return Divider(
      height: 50.0,
      color: Colors.lightBlue[200],
      thickness: 2.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('Profile'),
              pinned: true,
              centerTitle: true,
              expandedHeight: 350.0,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image(
                  image: AssetImage('images/mypic1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Text(
                          'Apra Jain',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Marmelad',
                          ),
                        ),
                      ),
                      SizedBox(height: 25.0),
                      headers('Contact'),
                      SizedBox(height: 15.0),
                      Container(
                        width: double.infinity,
                        child: Column(
                          children: [
                            customRow(Icons.account_box, 'Student Number:',
                                '1913119'),
                            customRow(
                                Icons.email, 'Email:', 'apra.jain01@gmail.com'),
                            customRow(Icons.phone_android, 'Mobile Number:',
                                '+918604601091'),
                          ],
                        ),
                      ),
                      divider(),
                      headers('Description'),
                      SizedBox(height: 15.0),
                      Text(
                        'Motivated and efficient. Diligent, goal-oriented and eager to learn.',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 18.0,
                          letterSpacing: 1.0,
                        ),
                      ),
                      divider(),
                      headers('Education'),
                      SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Present-',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 21.0,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Bachelor of Technology from Ajay Kumar Garg',
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w400,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      divider(),
                      headers('Skills'),
                      SizedBox(height: 18.0),
                      skills('C language'),
                      skills('Java'),
                      skills('Flutter'),
                      //skills('HTML/CSS'),
                      Divider(
                        height: 50.0,
                        color: Colors.blueGrey[300],
                        thickness: 2.5,
                        indent: 90.0,
                        endIndent: 90.0,
                      ),
                    ],
                  ),
                ),
                childCount: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
