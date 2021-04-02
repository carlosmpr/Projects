import 'package:covid19/constant.dart';
import 'package:covid19/infor_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid 19',
      theme: ThemeData(
        fontFamily: "Poppins",
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(bodyText1: TextStyle(color: kBodyTextColor)),
        primarySwatch: Colors.blue,
      ),
      home: InfoScreen(),
    );
  }
}
