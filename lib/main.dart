import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'chat app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Color(0xFFFEF9EB),
      ),
      home: HomeScreen(),
    ),
  );
}
