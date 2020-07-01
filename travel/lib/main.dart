import 'package:flutter/material.dart';
import 'package:travel/components/navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}
