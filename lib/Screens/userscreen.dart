import 'package:flutter/material.dart';
import 'package:httprequest/Screens/widgets/myCard.dart';
import 'package:httprequest/Screens/widgets/userDetails.dart';
import 'package:httprequest/models/User.dart';
import 'package:httprequest/services/UserServices.dart';
import 'package:httprequest/utils.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool loading = true;
  List<User> users = [];

  getUserList() async {
    users = await UserServices().getUser();
    loading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Screen'),
      ),
      body: loading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: (){
                      pushPage(context, UserDetails(users[index]));
                    },
                    child: MyCard(
                      content: '${users[index].name}',
                    ),
                  ),
                );
              }),
    );
  }
}
