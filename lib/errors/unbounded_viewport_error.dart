import 'package:flutter/material.dart';

class UnboundedViewportError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unbounded Viewport Error',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Unbounded Viewport Error'),),
        body: Column(
          children: <Widget>[
            Text("Hello, world!"),
            // Resolution: wrap GridSearch inside an Expanded widget or
            // a widget with a fixed height such as a Container.
            GridSearch(),
          ],
        ),
      )
    );
  }
}

class GridSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GridView.count(
        crossAxisCount: 4,
        children: [
          for (var i = 0; i != 64; ++i)
            Center(child: Text(i.toString()))
        ],
      );
}
