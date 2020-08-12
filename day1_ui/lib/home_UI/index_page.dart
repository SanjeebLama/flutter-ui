import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100.0,
        width: 300.0,
        color: Colors.deepPurpleAccent,
        child: Text(
          "HELLO container",
          style: TextStyle(backgroundColor: Colors.white30),
        ),
      ),
    );
  }
}
