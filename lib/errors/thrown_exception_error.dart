import 'package:flutter/widgets.dart';

class IThrowExceptionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    throw Exception('not today');
  }
}

void main() => runApp(IThrowExceptionsWidget());
