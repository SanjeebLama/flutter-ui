import 'package:flutter/material.dart';
import 'screens/indexPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel and Explore App',
      home: IndexPage(),
    );
  }
}
