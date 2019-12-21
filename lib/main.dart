import 'package:flutter/material.dart';
import 'package:flutter_widgets/flutter_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  ItemScrollController controller = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Material(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                children: <Widget>[
                  KeyedSubtree(
                    key: PageStorageKey('page1'),
                    child: ScrollablePositionedList.builder(
                      itemCount: 1000,
                      itemBuilder: (context, index) => Text('Item $index'),
                      itemScrollController: controller,
                    ),
                  ),
                  Text('house'),
                  KeyedSubtree(
                    key: PageStorageKey('page3'),
                    child: ScrollablePositionedList.builder(
                      itemCount: 1000,
                      itemBuilder: (context, index) => Text('Item $index'),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('Jumping');
                controller.jumpTo(index: 100);
              },
              child: Text(
                'Jump',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
