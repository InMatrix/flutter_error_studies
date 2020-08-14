import 'package:flutter/material.dart';

// This example is adapted from https://stackoverflow.com/questions/51304568/

class ScaffoldContextError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Playground'),
      ),
      body: Center(
        child: RaisedButton(
          color: Colors.pink,
          textColor: Colors.white,
          onPressed: _displaySnackBar(context),
          child: Text('Display SnackBar'),
        ),
      ),
    );
  }
}

_displaySnackBar(BuildContext context) {
  final snackBar = SnackBar(content: Text('Are you talkin\' to me?'));
  Scaffold.of(context).showSnackBar(snackBar);
}
