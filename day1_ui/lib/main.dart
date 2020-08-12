import 'package:flutter/material.dart';
import 'home_UI/index_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Blog Profile",
    home: Scaffold(
      body: IndexPage(),
    ),
  ));
}
