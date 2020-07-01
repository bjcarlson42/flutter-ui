import 'package:flutter/material.dart';
import 'package:travel/screens/explore_screen.dart';
import 'package:travel/components/app_bar.dart';
import 'package:travel/components/drawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navigation extends StatefulWidget {
  Navigation({Key key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    Center(child: Text('Home Screen')),
    Explore(),
    Center(child: Text('Rewards Screen')),
    Center(child: Text('Messages Screen')),
    Center(child: Text('Profile Screen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(),
      appBar: appBar(),
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: SizedBox(
        height: 100.0,
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.globe),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.compass),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bars),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text(''),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              title: Text(''),
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.pink[400],
          selectedFontSize: 0.0,
          unselectedFontSize: 0.0,
          iconSize: 30.0,
          elevation: 0.0,
          backgroundColor: Colors.grey[850],
        ),
      ),
    );
  }
}
