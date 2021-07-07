# Lab 02 - Introducing Widgets 

Flutter has a number of Widgets available to the developer.
Widgets are user interface components can are available in a range of options.
Check out the [Widget catalog](https://flutter.dev/docs/development/ui/widgets) for some amazing options.

Below are some example Widgets that can be helpful when building an application.

| Widget   | Description |
|----------|--------|
| Scaffold | General layout | 
| AppBar   | Application Header |
| Text     | Text Entry |
| ListView | Scrolling list | 
 

## Scaffold 

TBC

Use Case:
* TBC

[Example](TBC)

```
Code
```

## AppBar 

TBC

Use Case:
* TBC

[Example](TBC)

```
Code
```


## Text 

TBC

Use Case:
* TBC

[Example](TBC)

```
Code
```


## ListView

A ListView groups user data together.

Use Case:
* If you need to present an onscreen list of items.

[Example](TBC):

#### Basic List 

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';

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
          ],
        ),
      ),
    );
  }
}
```

#### Long List 
The example creates a long list containing three items.
__Note:__ In this example the data source is maintained separately from the code.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items  = ['January', 'February', 'March'];

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

