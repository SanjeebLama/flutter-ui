import 'package:flutter/material.dart';
import './dashboard.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  var selectedItem = 0;
  List childeren = [Dashboard(), Dashboard(), Dashboard(), Dashboard()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: childeren[selectedItem],
      backgroundColor: Color(0xFF202020),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFD4F99),
        iconSize: 27.0,
        currentIndex: selectedItem,
        unselectedLabelStyle: TextStyle(color: Color(0xFF1B1B1B)),
        unselectedItemColor: Color(0xFF888888),
        onTap: (currentIndex) {
          setState(() {
            selectedItem = currentIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.home),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFFD4F99)),
              )),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.search),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFFD4F99)),
              )),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.camera),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFFD4F99)),
              )),
          BottomNavigationBarItem(
              backgroundColor: Color(0xFF1B1B1B),
              icon: Icon(Icons.person),
              title: Container(
                height: 5.0,
                width: 5.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFFD4F99)),
              )),
        ],
      ),
    );
  }
}
