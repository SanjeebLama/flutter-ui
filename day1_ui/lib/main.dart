import 'package:day1_ui/home_UI/index_page.dart';
import 'package:flutter/material.dart';
import 'home_UI/index_page.dart';

void main() {
  runApp(MaterialApp(
    title: "Furniture",
    home: Scaffold(
      appBar: AppBar(
        title: Text("Shoping Cart"),
        backgroundColor: Colors.deepPurple,
      ),
      body: IndexPage(),
    ),
  ));
}
