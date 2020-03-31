import 'dart:ui';

import 'package:animated_appabar/customRoundedAppBar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar Height',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Extend AppBar Height with Animation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double height = 100.0;

  @override
  Widget build(BuildContext context) {
    var statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      appBar: CustomAppBar(height + statusBarHeight, 'Animated AppBar'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  if (height == 100)
                    setState(() {
                    height = 200.0;
                  });
                  else
                    setState(() {
                      height = 100.0;
                    });
                },
                child: Text(
                  'TAP ME',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 35,
                      fontWeight: FontWeight.w700,
                      decoration: TextDecoration.underline,
                      background: Paint()
                        ..color = Colors.pinkAccent.withOpacity(.5)),
                ))
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
