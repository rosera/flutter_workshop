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

An AppBar is used as a Header in Flutter apps.

Use Case:
* If you need additional controls e.g. search, popup-menu in addition to a title.

[Gallery AppBar](https://gallery.flutter.dev/#/demo/app-bar)

#### AppBar

```dart
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        leading: IconButton(
          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            tooltip: 'Favourite',
            icon: const Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          ),
          IconButton(
            tooltip: 'Search',
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<Text>(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(
                    'First',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'Second',
                  ),
                ),
                PopupMenuItem(
                  child: Text(
                    'Third',
                  ),
                ),
              ];
            },
          )
        ],
      ),
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

#### Navigation Drawer

The example creates a navigation bar with a couple of items

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
  ];

  @override
  Widget build(BuildContext context) {
    final title = 'Navigation Bar';

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
              },
            );
          },
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Rich Rose'),
              accountEmail: Text('rich.rose@flutter.dev'),
              currentAccountPicture: const CircleAvatar(
                child: FlutterLogo(size: 42.0),
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Page One'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Page Two'),
              onTap: () {},
            )
          ],
        )),
      ),
    );
  }
}
``` 
