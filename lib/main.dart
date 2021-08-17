import 'package:flutter/material.dart';
import 'package:httprequest/Screens/userscreen.dart';

void main() {
  runApp(HttRequest());
}

class HttRequest extends StatefulWidget {
  @override
  _HttRequestState createState() => _HttRequestState();
}

class _HttRequestState extends State<HttRequest> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: UserScreen(),
    );
  }
}
