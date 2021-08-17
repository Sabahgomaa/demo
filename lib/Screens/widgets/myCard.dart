import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCard extends StatefulWidget {
  String content;
  MyCard({this.content = ' _ '});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(child: Text(widget.content)),
        ),
      ),
    );
  }
}
