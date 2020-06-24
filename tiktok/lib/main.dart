import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.person_outline,
                color: Colors.grey,
                size: 100.0,
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                'Sign up for an account',
                style: TextStyle(color: Colors.black87),
              ),
              SizedBox(
                height: 15.0,
              ),
              SizedBox(
                width: 200.0,
                child: Builder(
                  builder: (context) => RaisedButton(
                    onPressed: () {
                      _openPopup(context);
                    },
                    color: Colors.red[400],
                    textColor: Colors.white,
                    child: Text('Sign up'),
                  ),
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _openPopup(context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.white,
    builder: (BuildContext bc) {
      return Container(
        height: MediaQuery.of(context).size.height * .90,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pop(
                        context,
                      ),
                      child: Icon(
                        Icons.close,
                      ),
                    ),
                    Icon(Icons.more),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Sign up for TikTok',
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Create a profile, follow other accounts, make your own videos, and more.',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: RaisedButton(
                    onPressed: () => {},
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(FontAwesomeIcons.user),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Use phone or email',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: RaisedButton(
                    onPressed: () => {},
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Continue with Facebook',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: RaisedButton(
                    onPressed: () => {},
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.google,
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Continue with Google',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                ButtonTheme(
                  minWidth: 250.0,
                  child: RaisedButton(
                    onPressed: () => {},
                    elevation: 0.0,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.lightBlue,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text(
                              'Continue with Twitter',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
