import 'package:flutter/material.dart';
import 'package:travel/components/custom_card.dart';

class Main extends StatelessWidget {
  final double appBarHeight = AppBar().preferredSize.height;
  final double navBarHeight = 100.0;
  final double extendedAppBarHeight = 50.0;
  final double topCardHeight = 175.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 175.0,
                width: MediaQuery.of(context).size.width,
                child: customCard(
                    "Nature's Light", "450 Spots", Icons.access_alarm, "1")),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                    height: ((MediaQuery.of(context).size.height) -
                            appBarHeight -
                            navBarHeight -
                            extendedAppBarHeight -
                            topCardHeight) *
                        .35,
                    width: MediaQuery.of(context).size.width * .5,
                    child: customCard(
                        "Cultural", "257 Spots", Icons.accessibility, "2")),
                Container(
                  height: ((MediaQuery.of(context).size.height) -
                          appBarHeight -
                          navBarHeight -
                          extendedAppBarHeight -
                          topCardHeight) *
                      .55,
                  width: MediaQuery.of(context).size.width * .5,
                  child: customCard("Popularity", "357 Spots",
                      Icons.bluetooth_searching, "3"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                    height: ((MediaQuery.of(context).size.height) -
                            appBarHeight -
                            navBarHeight -
                            extendedAppBarHeight -
                            topCardHeight) *
                        .55,
                    width: MediaQuery.of(context).size.width * .5,
                    child: customCard(
                        "Moden Life", "117 Spots", Icons.attach_money, "4")),
                Container(
                    height: ((MediaQuery.of(context).size.height) -
                            appBarHeight -
                            navBarHeight -
                            extendedAppBarHeight -
                            topCardHeight) *
                        .35,
                    width: MediaQuery.of(context).size.width * .5,
                    child: customCard(
                        "Sun and Sand", "147 Spots", Icons.brightness_5, "5")),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
