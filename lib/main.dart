import 'package:flutter/material.dart';
import 'package:whatsapp_clone/HomeScreen.dart';
import 'package:whatsapp_clone/WelcomeScreen.dart';
import 'package:whatsapp_clone/LoginScreen.dart';
import 'package:whatsapp_clone/OtpVerification.dart';
import 'package:whatsapp_clone/SignUp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFF075E54), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF128C7E))),
      home: WelcomeScreen(),
    );
  }
}