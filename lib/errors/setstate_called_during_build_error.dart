import 'package:flutter/material.dart';

class SetStateCalledDuringBuildError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('"setState called during build" error'),
        ),
        body: DialogPage(),
      ),
    );
  }
}

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Alert Dialog"),
          );
        });

    return Center(
      child: Column(
        children: <Widget>[
          Text('Show Material Dialog'),
        ],
      ),
    );
  }
}
