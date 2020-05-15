import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../models/message_model.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({this.user});
  createState() {
    return ChatScreenState();
  }
}

class ChatScreenState extends State<ChatScreen> {
  Widget build(context) {
    return Scaffold(
        // backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage(widget.user.imageUrl),
                ),
                SizedBox(width: 5.0),
                Text(
                  widget.user.name,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                      padding: EdgeInsets.only(top: 10.0),
                      itemCount: chats.length,
                      itemBuilder: (context, index) {
                        return Text(chats[index].text);
                      }),
                ),
              ),
            )
          ],
        ));
  }
}
