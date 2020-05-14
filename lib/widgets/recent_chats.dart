import 'package:flutter/material.dart';
import '../models/message_model.dart';

class RecentChats extends StatelessWidget {
  Widget build(context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, index) {
              return Row(
                children: <Widget>[
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage(chats[index].sender.imageUrl),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        chats[index].sender.name,
                      ),
                      Text(
                        chats[index].text,
                      ),
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
