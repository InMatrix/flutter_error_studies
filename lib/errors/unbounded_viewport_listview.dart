import 'package:flutter/material.dart';

void main() => runApp(UnboundedViewPortListViewError());

class UnboundedViewPortListViewError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example of the “renderbox was not laid out” error'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Header'),
              ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.map),
                    title: Text('Map'),
                  ),
                  ListTile(
                    leading: Icon(Icons.subway),
                    title: Text('Subway'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
