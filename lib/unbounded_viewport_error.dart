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
