import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.blueAccent,
              ),
              Positioned(
                  child: Center(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Your location here",
                      style: TextStyle(fontSize: 14.0, color: Colors.white54),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.my_location,
                          color: Colors.white54,
                        ),
                        Text(
                          "Bali Indonesia",
                          style:
                              TextStyle(fontSize: 14.0, color: Colors.white54),
                        ),
                      ],
                    )
                  ],
                ),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
