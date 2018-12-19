import 'package:flutter/material.dart';

class DropDownMenuError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: Navigator(
          onGenerateRoute: (RouteSettings settings) => MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      // The height of this container may need to be increased
                      // for larger testing devices
                      Container(height: 100.0),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20.0),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0), // <--- this padding
                        child: DropdownButton<int>(
                          value: 12,
                          isExpanded: true,
                          onChanged: (int i) => print('changed to $i'),
                          items: List<DropdownMenuItem<int>>.generate(
                            100,
                            (int i) => DropdownMenuItem<int>(
                                  value: i,
                                  child: Text(i.toString()),
                                ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              title: Text('item 1'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.ac_unit),
              title: Text('item 2'),
            ),
          ],
        ),
      ),
    );
  }
}
