import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Header(),
      ],
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      overflow: Overflow.visible,
      children: <Widget>[
        Container(
          height: 200,
          width: double.infinity,
          color: Colors.redAccent,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(icon: Icon(Icons.menu), onPressed: null),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                "Article Post",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
            )
          ],
        ),
        Positioned(
          top: 125.0,
          left: 15.0,
          right: 15.0,
          child: Material(
            elevation: 3.0,
            borderRadius: BorderRadius.circular(7.0),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: Colors.white),
            ),
          ),
        ),
        Positioned(
            top: 75,
            left: (MediaQuery.of(context).size.width / 2 - 50.0),
            child: CircleAvatar(
              radius: 55,
              backgroundColor: Color(0xffFDCF09),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/Avatar.jpg"),
              ),
            )),
        Positioned(
            top: 190.0,
            left: (MediaQuery.of(context).size.width / 2 - 105.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Iron Man",
                  style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7.0,
                ),
                Text(
                  "Stark International",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.normal,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0)),
                      onPressed: () {
                        debugPrint("Message was tapped !!!");
                      },
                      color: Color(0xFFFA624F),
                      child: Text(
                        "Message",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                    SizedBox(width: 10.0),
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0)),
                      onPressed: () {
                        debugPrint("Message was tapped !!!");
                      },
                      color: Color(0xFFFA624F),
                      child: Text(
                        "Following",
                        style: TextStyle(fontSize: 15.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ))
      ],
    );
  }
}
