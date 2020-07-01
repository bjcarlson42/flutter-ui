import 'package:flutter/material.dart';

Widget drawer() {
  return Container(
    child: Drawer(
      child: Container(
        color: Colors.grey[400],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100.0,
              child: DrawerHeader(
                child: Center(
                  child: Text(
                    'Travel App',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[850],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Navigation'),
            ),
          ],
        ),
      ),
    ),
  );
}
