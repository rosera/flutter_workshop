import 'package:bourne_json/model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
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

Future<String> _loadRemoteData() async {
  final response = await (http
      .get(Uri.parse('https://storage.googleapis.com/spl-api/marvel.json')));
  if (response.statusCode == 200) {
    print('response statusCode is 200');
    return response.body;
  } else {
    print('Http Error: ${response.statusCode}!');
    throw Exception('Invalid data source.');
  }
}

class _MyHomePageState extends State<MyHomePage> {
  late Future<DataSeries> dataSeries;

  @override
  void initState() {
    super.initState();
    dataSeries = fetchJsonData();
  }

  Future<DataSeries> fetchJsonData() async {
    String jsonString = await _loadRemoteData();
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

