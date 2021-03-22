import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var favoriteStar = false;
  var favoriteHeart = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3AA575),
                Color(0xFF4CD4A9),
              ],
            ),
          ),
        ),
        elevation: 0.0,
        title: Text('Now Playing'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15.0,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(favoriteStar ? Icons.star : Icons.star_border),
            onPressed: () {
              setState(() {
                if (favoriteStar)
                  favoriteStar = false;
                else
                  favoriteStar = true;
              });
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF3AA575),
              Color(0xFF4CD4A9),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25.0),
                    child: Image(
                      image: Song().albumCover,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width * .8,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Song().title,
                            style:
                                TextStyle(color: Colors.white, fontSize: 25.0),
                          ),
                          IconButton(
                            icon: Icon(
                              favoriteHeart
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                if (favoriteHeart)
                                  favoriteHeart = false;
                                else
                                  favoriteHeart = true;
                              });
                            },
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            Song().singerName,
                            style: TextStyle(
                              color: Color(0xFF16CFDE),
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: LinearProgressIndicator(
                          backgroundColor: Colors.grey,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Color(0xFF25D0DE)),
                          value: .4,
                          minHeight: 10.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '1:24',
                              style: TextStyle(
                                color: Colors.black38,
                              ),
                            ),
                            Text(
                              '1:48',
                              style: TextStyle(
                                color: Colors.black38,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios_outlined,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            iconSize: 70.0,
                            icon: Icon(
                              Icons.play_arrow_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Song {
  String title = 'Peaches';
  String singerName = 'Justin Bieber';
  AssetImage albumCover = AssetImage('assets/cover.png');
}
