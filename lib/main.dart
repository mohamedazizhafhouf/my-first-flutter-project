import 'dart:async';

import 'package:app1/appin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => AppIn(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Mohamed Aziz Hafhouf',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }
}
