import 'package:flutter/material.dart';
import 'package:travel/components/main.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Column(
        children: <Widget>[
          Container(
            color: Colors.grey[850],
            child: SizedBox(
              height: 50.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Discover',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                  Text(
                    'Activities',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Main(),
        ],
      ),
    );
  }
}
