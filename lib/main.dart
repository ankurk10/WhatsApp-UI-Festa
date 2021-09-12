import 'package:flutter/material.dart';
import 'package:whatsapp_clone/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF075E54),
          accentColor: Color(0xFF128C7E)),
      home: HomeScreen(),
    );
  }
}