import 'package:flutter/material.dart';
import './screens/feed_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PhotoGrapherNetwork',
      debugShowCheckedModeBanner: false,
      home: FeedScreen(),
    );
  }
}
