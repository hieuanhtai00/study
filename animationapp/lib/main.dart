import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late Animation animation =
      Tween<double>(begin: 0, end: 1).animate(controller);
  late AnimationController controller =
      AnimationController(vsync: this, duration: Duration(milliseconds: 2000));
  late CurvedAnimation curvedAnimation =
      CurvedAnimation(parent: controller, curve: Curves.bounceOut);
  @override
  void initState() {
    super.initState();
    controller.forward();
    animation.addListener(() {
      setState(() {});
    });
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.stop();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(
        opacity: animation.value,
        child: Icon(
          Icons.face,
          size: 50,
        ),
      ),
    );
  }
}
