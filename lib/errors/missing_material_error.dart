import 'package:flutter/material.dart';

class MissingMaterialError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Missing Material',
      home: new ExampleWidget(),
      // The line below can resolve the error.
      // home: Scaffold(body: new ExampleWidget()),
    );
  }
}

class ExampleWidget extends StatefulWidget {
  ExampleWidget({Key key}) : super(key: key);

  @override
  _ExampleWidgetState createState() => new _ExampleWidgetState();
}

class _ExampleWidgetState extends State<ExampleWidget> {
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new TextField(
          controller: _controller,
          decoration: new InputDecoration(
            hintText: 'Type something',
          ),
        ),
        new RaisedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return new AlertDialog(
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text('What you typed'),
                  ),
                  content: Center(child: new Text(_controller.text)),
                );
              },
            );
          },
          child: new Text('DONE'),
        ),
      ],
    );
  }
}

void main() => runApp(MissingMaterialError());
