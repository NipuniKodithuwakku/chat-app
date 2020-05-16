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
  _buildMessage(Message message, bool isMe) {
    return Row(
      children: <Widget>[
        Container(
          margin: isMe
              ? EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  left: 80.0,
                )
              : EdgeInsets.only(
                  top: 8.0,
                  bottom: 8.0,
                  // right: 80.0,
                ),
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
          decoration: BoxDecoration(
            color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                message.time,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                message.text,
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        !isMe
            ? IconButton(
                icon: message.isLiked
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border),
                iconSize: 30.0,
                color: message.isLiked
                    ? Theme.of(context).primaryColor
                    : Colors.blueGrey,
                onPressed: () {},
              )
            : SizedBox.shrink(),
      ],
    );
  }

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
                      reverse: true,
                      // scrollDirection: Axis.vertical,
                      padding: EdgeInsets.only(top: 15.0),
                      itemCount: messages.length,
                      itemBuilder: (context, index) {
                        final Message message = messages[index];
                        final bool isMe =
                            messages[index].sender.id == currentUser.id;
                        return _buildMessage(message, isMe);
                      }),
                ),
              ),
            )
          ],
        ));
  }
}
