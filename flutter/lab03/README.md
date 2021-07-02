# Lab 03 - Data Management

Our application now has data and is displaying information on screen.
However this is not an efficient way to handle data.
Lets go back to Dart and look for an alternative method to present the same data.

##  Extending the ListView to present our data

Example: 
```
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final title = 'MyAwesome App';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('January'),
            ),
            ListTile(
              title: Text('February'),
            ),
            ListTile(
              title: Text('March'),
            ),
            ListTile(
              title: Text('April'),
            ),
            ListTile(
              title: Text('May'),
            ),
            ListTile(
              title: Text('June'),
            ),
            ListTile(
              title: Text('July'),
            ),
            ListTile(
              title: Text('August'),
            ),
            ListTile(
              title: Text('September'),
            ),
            ListTile(
              title: Text('October'),
            ),
            ListTile(
              title: Text('November'),
            ),
            ListTile(
              title: Text('December'),
            ),
          ],
        ),
      ),
    );
  }
}
```


## ListBuilder



- [x] Declare a List of items
- [x] Declare a ListView.builder

Example:

```
import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}


class MyApp extends StatelessWidget {
  List<String> items = ['January', 'February', 'March', 'April'];

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
            );
          },
        ),
      ),
    );
  }
}
```
