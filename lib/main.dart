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
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/me.png'),
                radius: 50.0,
              ),
              Text(
                'Skafti Sveinsson',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                      fontSize: 40.0,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              Text(
                'Front End Developer',
                style: GoogleFonts.sourceSansPro(
                  textStyle: TextStyle(
                      fontSize: 20.0, letterSpacing: 1.5, color: Colors.white),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.phone, color: Colors.teal),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      '+354 848 5184',
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                            color: Colors.teal.shade900, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.email, color: Colors.teal),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'skaftisveins@gmail.com',
                      style: GoogleFonts.sourceSansPro(
                        textStyle: TextStyle(
                            color: Colors.teal.shade900, fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
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
