# Lab05 - Multiple Pages

When creating a new page for the application, use a new dart file.
Keeping related code together is useful and makes it easier to understand how the code is structured.


- [x] main.dart
- [x] details.dart

## main.dart
```dart
import 'package:first_app/details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> items = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  @override
  Widget build(BuildContext context) {
    final title = 'MyAwesome App';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${items[index]}'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyDetails(items[index])));
              },
            );
          },
        ),
      ),
    );
  }
}
```

## details.dart

This module is new and represents the new page being added to our application.
__Note:__

*  How similar `details.dart` is to the original `main.dart` code.
* The return widget is a `Scaffold` widget rather than `MaterialApp`.

```dart
import 'package:flutter/material.dart';

class MyDetails extends StatelessWidget {

  final String item;
  MyDetails(this.item);

  @override
  Widget build(BuildContext context) {
    final title = 'MyAwesome App';

    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Text('You selected $item'),
    );
  }
}
```
