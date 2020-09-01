import 'package:flutter/material.dart';

void main() => runApp(UnbundedTextFiled());

class UnbundedTextFiled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:
              Text('Another example of the “renderbox was not laid out” error'),
        ),
        body: Row(
          children: [
            TextField(),
          ],
        ),
      ),
    );
  }
}
