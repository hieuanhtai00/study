import 'dart:convert';

import 'package:http/http.dart' as http;

class User {
  int userId, id;
  String title;
  User({required this.userId, required this.id, required this.title});
  factory User.fromJson(Map<String, dynamic> map) {
    return User(
      userId: map['userId'],
      id: map['id'],
      title: map['title'],
    );
  }
}

Future<List<User>> restApi() async {
  final response =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/'));
  final responseData = jsonDecode(response.body);
  List<User> userList = [];
  for (var user in responseData) {
    userList.add(User.fromJson(user));
  }
  return userList;
}
