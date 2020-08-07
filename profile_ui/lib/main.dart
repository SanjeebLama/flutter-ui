import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: ProfileUI(),
      ),
    );
  }
}

class ProfileUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          overflow: Overflow.visible,
          alignment: Alignment.center,
          children: <Widget>[
            Image.asset(
              'images/birds.jpg',
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height / 3,
            ),
            Positioned(
                bottom: -50.0,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/avatar.jpg'),
                ))
          ],
        ),
        SizedBox(
          height: 60,
        ),
        Center(
          child: Column(
            children: <Widget>[
              Text(
                'Iron Man',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              Text(
                'The one and only Tony Stark',
                style: TextStyle(fontWeight: FontWeight.w200),
              ),
              Padding(
                padding: EdgeInsets.all(24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.contact_mail),
                    Text('Call Me Ladies !'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Text(
          'About me',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          'Hi my name is Tony Stark and I am Iron Man. What you want more? Well, I am also genius, billionare, playboy and philantropist',
          style: TextStyle(fontStyle: FontStyle.italic, color: Colors.blueGrey),
        ),
      ],
    );
  }
}
