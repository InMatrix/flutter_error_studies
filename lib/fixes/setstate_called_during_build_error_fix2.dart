import 'package:flutter/material.dart';

class SetStateCalledDuringBuildFix extends StatelessWidget {
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
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () => showMyDialog(context));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text('Show Material Dialog'),
        ],
      ),
    );
  }

  void showMyDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Alert Dialog Fixed"),
          );
        });
  }
}

void main() => runApp(SetStateCalledDuringBuildFix());

// Reference: https://stackoverflow.com/a/52172201
