import 'package:flutter/material.dart';
import 'package:library_management_system/screens/signin_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        body: SafeArea(
          child: LoginScreen(),
        ),
      ),
    ),
  );
}
