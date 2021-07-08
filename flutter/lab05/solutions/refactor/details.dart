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
