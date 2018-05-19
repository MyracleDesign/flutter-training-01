import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('Settings'),
            centerTitle: true,
          ),
          body: createSettingsListView(),
          bottomNavigationBar: new BottomNavigationBar(
            items: [
              new BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home'),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.settings),
                title: new Text('Settings'),
              ),
              new BottomNavigationBarItem(
                icon: new Icon(Icons.share),
                title: new Text('Share'),
              )
            ],
          ),
        ));
  }

  ListView createSettingsListView() {
    return new ListView(
      children: <Widget>[
        buildSettingsListRow('Background Image', () {
          print('Background Image');
        }),
        buildSettingsListRow('Volume', () {
          print('Volume');
        }),
        buildSettingsListRow('Sharing Settings', () {
          print('Sharing Settings');
        }),
        buildSettingsListRow('Send Love', () {
          print('Send Love');
        }),
        buildSettingsListRow('Feedback', () {
          print('Feedback');
        }),
        buildSettingsListRow('Credits', () {
          print('Credits');
        })
      ],
    );
  }

  Container buildSettingsListRow(String title, Function actionOnPressed) {
    return new Container(
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new MaterialButton(
              child: new Text(title),
              onPressed: actionOnPressed,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      padding: new EdgeInsets.fromLTRB(16.0, 8.0, 8.0, 16.0),
    );
  }
}
