import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  stops: [0.0, 1.0],
                  tileMode: TileMode.repeated,
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.blue, Colors.black]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('images/me.png'),
                  radius: 50.0,
                ),
                Text(
                  'Skafti Sveinsson',
                  style: GoogleFonts.pacifico(
                    textStyle: TextStyle(fontSize: 40.0, color: Colors.white),
                  ),
                ),
                Text(
                  'Front End Developer',
                  style: GoogleFonts.sourceSansPro(
                    textStyle: TextStyle(
                        fontSize: 20.0,
                        letterSpacing: 1.5,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 160.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.black),
                    title: Text(
                      '+354 848 5184',
                      style: GoogleFonts.sourceSansPro(
                        textStyle:
                            TextStyle(color: Colors.grey[900], fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(Icons.email, color: Colors.black),
                    title: Text(
                      'skaftisveins@gmail.com',
                      style: GoogleFonts.sourceSansPro(
                        textStyle:
                            TextStyle(color: Colors.grey[900], fontSize: 20.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LayoutChallenge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(
            child: Text('Hot Reloading working!'),
          ),
        ),
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.red[900],
                width: 100.0,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        color: Colors.yellow[600],
                        width: 100.0,
                        height: 100.0,
                      ),
                      Container(
                        color: Colors.green[600],
                        width: 100.0,
                        height: 100.0,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.blue[400],
                width: 100.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
