# Lab 02 - Introducing Widgets 

Flutter has a number of Widgets available to the developer.
Widgets are user interface components can are available in a range of options.
Check out the [Widget catalog](https://flutter.dev/docs/development/ui/widgets) for some amazing options.

Below are some example Widgets that can be helpful when building an application.

| Widget   | Description |
|----------|--------|
| Column   | Vertical layout |
| Row      | Horizontal layout |
| ListView | Scrolling list | 
| GridView | Vertical/Horizontal grid |
 

## Column 

TBC

Use Case:
* TBC

[Example](TBC)

```
Code
```


## Row 

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

-- Insert Image --

[Example](TBC):

The example creates a basic list containing three items.

```
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items =
      List<String>.generate(10, (i) => 'Harry Potter $i');

  @override
  Widget build(BuildContext context) {
    final title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Container(
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 200.0,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  ListTile(
                    title: Text('July 1'),
                  ),
                  ListTile(
                    title: Text('July 2'),
                  ),
                  ListTile(
                    title: Text('July 3'),
                  ),
                ],
              ))),
    );
  }
}
```


## GridView

TBC

Use Case:
* TBC

[Example](TBC)

```
Code
```

