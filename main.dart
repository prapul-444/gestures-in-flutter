import 'package:flutter/material.dart';
import 'Home.dart';
void main()=>runApp(Myapp());
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'camera',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange
      ),
      home: Home(),
    );
  }
}