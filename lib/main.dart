import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BG Changer',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MainScreenLayout(),
      ),
    );
  }
}

class MainScreenLayout extends StatefulWidget {
  @override
  State<MainScreenLayout> createState() => _MainScreenLayoutState();
}

class _MainScreenLayoutState extends State<MainScreenLayout> {
  var mRandomColors = [Colors.red, Colors.yellow, Colors.blue];
  var defaultColor = Colors.blue;
  applyRandomColor() {
    var rndColor = Random().nextInt(mRandomColors.length);
    setState(() {
      defaultColor = mRandomColors[rndColor];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: defaultColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Center(
            child: Container(
              margin: EdgeInsets.only(
                bottom: 50.0,
              ),
              padding: EdgeInsets.all(4.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: applyRandomColor,
                  child: Text('Change color'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
