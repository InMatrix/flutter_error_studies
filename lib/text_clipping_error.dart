import 'package:flutter/material.dart';

class TextClippingError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Clipping Error'),
        ),
        body: Container(
          child: new Row(
            children: [
              new Icon(Icons.navigate_before),
              new Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
              new Icon(Icons.navigate_next),
            ],
          ),
          decoration: new BoxDecoration(
            color: Colors.grey[300],
          ),
          width: 400.0,
        ),
      ),
    );
  }
}
