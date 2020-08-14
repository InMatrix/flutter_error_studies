import 'package:flutter/material.dart';
import 'package:flutter_error_studies/errors/missing_material_error.dart';
import 'package:flutter_error_studies/errors/renderflex_overflow_error.dart';
import 'package:flutter_error_studies/errors/renderflex_overflow_error2.dart';
import 'package:flutter_error_studies/errors/scaffold_context_error.dart';
import 'package:flutter_error_studies/errors/setstate_called_during_build_error.dart';
import 'package:flutter_error_studies/errors/thrown_exception_error.dart';
import 'package:flutter_error_studies/errors/unbounded_viewport_error.dart';

import 'fixes/setstate_called_during_build_fix.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Errors Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              makeDemoEntry(
                context,
                "Missing Material",
                MissingMaterialError(),
              ),
              Divider(),
              makeDemoEntry(
                context,
                "RenderFlex Overflow",
                TextClippingError(),
              ),
              makeDemoEntry(
                context,
                "RenderFlex Overflow 2",
                ColumnOverflow(),
              ),
              makeDemoEntry(
                context,
                "Unbounded Viewport",
                UnboundedViewportError(),
              ),
              Divider(),
              makeDemoEntry(
                context,
                "Scaffold Context",
                ScaffoldContextError(),
              ),
              makeDemoEntry(
                context,
                "Thrown Exception",
                IThrowExceptionsWidget(),
              ),
              Divider(),
              makeDemoEntry(
                context,
                'setState called during build',
                SetStateCalledDuringBuildError(),
                SetStateCalledDuringBuildFix(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget makeDemoEntry(BuildContext context, String title, Widget errorDemo,
      [Widget fixDemo]) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: 50.0,
        ),
        Icon(Icons.warning),
        FlatButton(
          child: Text(title),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => errorDemo),
            );
          },
        ),
        if (fixDemo != null)
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => fixDemo),
              );
            },
            child: Text('Fix'),
          ),
      ],
    );
  }
}
