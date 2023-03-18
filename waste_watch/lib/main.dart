import 'package:flutter/material.dart';
import 'package:waste_watch/splashscreen.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStartedPage(),
    );
  }
}