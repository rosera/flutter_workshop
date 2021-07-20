import 'package:bourne_json/model.dart';
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

Future<String> _loadLocalData() async {
  return await rootBundle.loadString('assets/marvel.json');
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<DataSeries> dataSeries;

  @override
  void initState() {
    super.initState();
    dataSeries = fetchJsonData();
  }

  Future<DataSeries> fetchJsonData() async {
     String jsonString = await _loadLocalData();
    print('jsonString: $jsonString');

    final jsonResponse = json.decode(jsonString);
    print('jsonResponse: $jsonResponse');

    DataSeries dataSeries = new DataSeries.fromJson(jsonResponse);

    return dataSeries;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
