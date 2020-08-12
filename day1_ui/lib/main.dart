import 'package:flutter/material.dart';
import 'home_UI/index_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Blog Profile",
    home: Scaffold(
      body: IndexPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          null;
           
        },
        child: Icon(Icons.message),
        tooltip: "Message Box",
      ),
    ),
  ));

  void showSnackBar(BuildContext context) {
   var snackBar = SnackBar(content: Text(" Message Button was Tapped");
    Scaffold.of(context).showSnackBar(snackBar);
  }
}
