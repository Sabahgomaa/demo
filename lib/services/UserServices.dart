//import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:httprequest/models/User.dart';

class UserServices {
  String baseUrl = 'https://jsonplaceholder.typicode.com';
  String user = '/users';

  Future<List<User>> getUser() async {
    List<User> usersList = [];
    Response response = await Dio().get('$baseUrl$user');
    var data = response.data;
    data.forEach((element) {
      User user = User.fromJson(element);
      usersList.add(user);
    });
    return usersList;
  }
}
