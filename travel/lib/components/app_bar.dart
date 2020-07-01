import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.grey[850],
    title: Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40.0, 0, 0, 0),
        child: Text(
          'Home',
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.search,
        ),
        onPressed: () => {},
      ),
      IconButton(
        icon: Icon(
          Icons.notifications,
        ),
        onPressed: () => {},
      ),
    ],
  );
}
