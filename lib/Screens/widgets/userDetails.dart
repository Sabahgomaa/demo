import 'package:flutter/material.dart';
import 'package:httprequest/Screens/widgets/myCard.dart';
import 'package:httprequest/models/User.dart';
import 'package:httprequest/utils.dart';

// ignore: must_be_immutable
class UserDetails extends StatefulWidget {
  User user;
  UserDetails(this.user);

  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(padding: EdgeInsets.all(10), children: [
          MyCard(
            content: "${widget.user.name}",
          ),
          SizedBox(height: 10,),
          InkWell(
              onTap: () {
                launchURL("mailto: ${widget.user.name}");
              },
              child: Text('Email: ${widget.user.email}')),
              SizedBox(height: 10,),
          InkWell(
              onTap: () {
                launchURL("tel: ${widget.user.phone}");
              },
              child: Text('Phone: ${widget.user.phone}')),
          Divider(),
          SizedBox(height: 10,),
          InkWell(
              onTap: () {
                launchURL("${widget.user.website}");
              },
              child: Text('Web:${widget.user.website}')),
        ]));
  }
}
