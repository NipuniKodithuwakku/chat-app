import 'package:flutter/material.dart';

class FavouriteContacts extends StatelessWidget {
  Widget build(context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            //to leave a space between text and row
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Favourite Contacts',
                style: TextStyle(
                  color: Colors.blueGrey,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.0,
                ),
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                iconSize: 30.0,
                color: Colors.blueGrey,
                onPressed: () {},
              )
            ],
          ),
        ),
        Container(
          height: 120.0,
          color: Colors.blue,
        )
      ],
    );
  }
}
