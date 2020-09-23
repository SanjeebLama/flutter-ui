import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
// import 'package:flutter_signin_button/flutter_signin_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginUI(),
    );
  }
}

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: Stack(
        children: <Widget>[
          Container(
            //     margin: EdgeInsets.only(top:h/15),
            height: h / 1.2,
            width: w,
            child: RotatedBox(
              quarterTurns: 0,
              child: FlareActor(
                'assets/images/changingColor.flr',
                animation: 'Flow',
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fill,
                // isPaused: x,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: w / 4, left: w / 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      "Dami",
                      style: TextStyle(
                          color: Color(0xE3FFFFFF),
                          fontSize: 40,
                          fontFamily: 'AGaramondPro',
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      " Hami",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 40,
                          fontFamily: 'AGaramondPro',
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Text(
                  "A new Platform for you.",
                  style: TextStyle(
                    color: Colors.white,
                    // fontSize: 1,
                    // fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                    // fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 190),
                //Google logo
                Container(
                  height: 50.0,
                  width: w / 1.5,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                    color: Color(0xFFFFFFFF),
                    elevation: 18.0,
                    child: Container(
                      // height: 40.0,
                      // padding: EdgeInsets.only(left: 1.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image(
                              image: AssetImage(
                                'assets/images/google_light.png',
                              ),
                              height: 35.0,
                            ),
                          ),
                          Text(
                            "Sign in with Google",
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),

                //Facebook logo
                Container(
                  height: 50.0,
                  width: w / 1.5,
                  child: RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70)),
                    color: Color(0xFF1877f2),
                    elevation: 18.0,
                    child: Container(
                      // height: 40.0,
                      padding: EdgeInsets.only(left: 3.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            child: Image(
                              image: AssetImage(
                                'assets/images/facebook_new.png',
                              ),
                              height: 24.0,
                            ),
                          ),
                          Text(
                            "  Sign in with Facebook",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
