# Lab 06 - Asynchronous 

Dart allows programming tasks to be performed in the background.
Asynchronous programming is essential for mobile applications to ensure a performant frontend for users.

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)

# Asynchronous

* Future 

#### Use Case:

* Reading a JSON file dynamically from the assets folder  

#### Example: Working with JSON

- [x] Create a JSON File
- [x] Create an assets folder
- [x] Add assets folder to pubspec.yaml
- [x] Add JSON file to assets folder

#### JSON Example:

```json
{
    "data": [
        {
            "title": "January"
        },
        {
            "title": "February"
        },
        {
            "title": "March"
        }
    ]
}
```

#### Pubspec.yaml

```yaml
# The following section is specific to Flutter.
flutter:

  # The following line ensures that the Material Icons font is
  # included with your application, so that you can use the icons in
  # the material Icons class.
  uses-material-design: true

  # To add assets to your application, add an assets section, like this:
  assets:
    - assets/data.json
  #   - images/a_dot_burr.jpeg
  #   - images/a_dot_ham.jpeg

```


#### Model

```dart
import 'package:flutter/material.dart';

class DataSeries {
  final List<DataItem> dataModel;

  DataSeries({required this.dataModel});

  factory DataSeries.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;

    List<DataItem> dataList =
        list.map((dataModel) => DataItem.fromJson(dataModel)).toList();

    return DataSeries(dataModel: dataList);
  }
}

class DataItem {
  final String title;

  DataItem({required this.title});

  factory DataItem.fromJson(Map<String, dynamic> json) {
    return DataItem(title: json['title']);
  }
}
```

#### main.dart

```dart
import 'package:first_app/details.dart';
import 'package:first_app/model.dart';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'dart:convert';

import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json Data Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(
        title: 'MyAwesome App',
        key: null,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

Future<String> _loadData() async {
  return await rootBundle.loadString('assets/data.json');
}

class _MyHomePageState extends State<MyHomePage> {
  Future<DataSeries> fetchQuests() async {
    String jsonString = await _loadData();
    final jsonResponse = json.decode(jsonString);
    DataSeries dataSeries = new DataSeries.fromJson(jsonResponse);
    print('${dataSeries.dataModel[0].title}');

    return dataSeries;
  }

  late Future<DataSeries> dataSeries;

  @override
  void initState() {
    super.initState();
    dataSeries = fetchQuests();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: FutureBuilder<DataSeries>(
          future: dataSeries,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.dataModel.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(snapshot.data!.dataModel[index].title),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyDetails(
                                  snapshot.data!.dataModel[index].title)));
                    },
                  );
                },
              );
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            }
            return CircularProgressIndicator();
          }),
    );
  }
}
```


#### details.dart
```dart
import 'package:flutter/material.dart';

class MyDetails extends StatelessWidget {
  final String item;
  MyDetails(this.item);

  @override
  Widget build(BuildContext context) {
    final title = 'Details Page';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Text('You selected $item'),
      ),
    );
  }
}
```

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)
