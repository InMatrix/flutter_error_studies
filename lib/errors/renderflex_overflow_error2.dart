import 'package:flutter/material.dart';

class ColumnOverflow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RenderFlex OverFlow 2'),
        ),
        body: Container(
          child: Row(
            children: [
              Icon(Icons.message),
              // Resolution: Wrap the Column below in an Expanded widget.
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Title", style: Theme.of(context).textTheme.headline4),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed"
                      " do eiusmod tempor incididunt ut labore et dolore magna "
                      "aliqua. Ut enim ad minim veniam, quis nostrud "
                      "exercitation ullamco laboris nisi ut aliquip ex ea "
                      "commodo consequat."),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
