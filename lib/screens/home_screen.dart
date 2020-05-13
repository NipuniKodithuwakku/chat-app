import 'package:flutter/material.dart';

class App extends StatefulWidget {
  createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Chats',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}
