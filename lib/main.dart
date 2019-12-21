import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Material(
        child: PageView(
          children: <Widget>[
            KeyedSubtree(
              key: PageStorageKey('page1'),
              child: ScrollablePositionedList.builder(
                itemCount: 1000,
                itemBuilder: (context, index) => Text('List 1 Item $index'),
              ),
            ),
            KeyedSubtree(
              key: PageStorageKey('page2'),
              child: ScrollablePositionedList.builder(
                itemCount: 1000,
                itemBuilder: (context, index) => Text('List 2 Item $index'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
