import 'package:flutter/material.dart';
import 'package:rest_firebase/presentation/widgets/splash/splash_screen.dart';
import 'package:rest_firebase/screens/home/home_screen.dart';
import 'package:rest_firebase/screens/profile/profile.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
      },
      home: Splash(),
    );
  }
}
