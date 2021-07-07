# Lab04 - User Interaction

Add a SnackBar to illustrate user interaction

```dart
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
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Awesome Snackbar!'),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
```
