import 'package:bourne_json/model.dart';
import 'package:flutter/material.dart';

class MyDetails extends StatelessWidget {
  final DataItem dataItem;
  MyDetails(this.dataItem);

  @override
  Widget build(BuildContext context) {
    final title = 'Details Page';

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(
          top: false,
          bottom: false,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 338.0,
                    width: 800.0,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 284.0,
                            width: 400.0,
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Image.network(this.dataItem.image),
                                ),
                              ],
                            ),
                          ),
                          // Divider(),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(this.dataItem.title),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
