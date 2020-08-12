import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: listItem.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.arrow_right),
            title: Text("list_item $index"),
            trailing: Icon(Icons.image),
          );
        });
  }

  final listItem = List<String>.generate(20, (index) => " ");
}
