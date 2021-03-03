import 'dart:ui';
// import 'package:flutter/src/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:instagram/insta_home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
          primaryColor: Colors.black54,
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(
              subtitle1: TextStyle(color: Colors.black, fontFamily: "Aveny")),
          textTheme: TextTheme(subtitle1: TextStyle(color: Colors.black54))),
      home: new InstaHome(),
    );
  }
}
