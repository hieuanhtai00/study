import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:restapi/model.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<User>>(
        future: restApi(),
        builder: (context, snapshot) {
          if (snapshot.hasData == false)
            return Center(
              child: CircularProgressIndicator(),
            );
          return SafeArea(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return buildItem(snapshot.data![index]);
              },
              itemCount: snapshot.data!.length,
            ),
          );
        },
      ),
    );
  }
}

Widget buildItem(User user) {
  return Card(
    elevation: 10,
    child: ListTile(
      title: Text(
        user.title,
        style: TextStyle(fontSize: 10),
      ),
      subtitle: Text(user.userId.toString()),
      leading: Text(user.id.toString()),
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
  );
}
