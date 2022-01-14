# Lab 08 - Lists 

Dart has Lists available to the developer.
Lists provide the ability to group different data types 

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)

# Create a List 

Dart uses a List to an array of items.

#### Use Case:

* You want a list of items. 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab08/solutions/hello-lists.dart): 
```dart
void main() {
  List listMonths = ['January', 'February', 'March'];

  listMonths.forEach(print);
}
```


# Add information to a List 

Dart uses a List to an array of items.

#### Use Case:

* You want to add item to a list. 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab08/solutions/adding-lists.dart): 
```dart
void main() {
  List listMonths = ['January', 'February', 'March'];

  listMonths.add('April');

  listMonths.forEach(print);
}
```

# Assign a variable from a List 

Dart uses a List to an array of items.

#### Use Case:

* If you want to assign a variable from a List.

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab08/solutions/variable-lists.dart): 
```dart
void main() {
  List listMonths = ['January', 'February', 'March'];

  String month = listMonths[0];
  print(month);
}
```

# Assign a Data Type to a List 

Dart uses a List to an array of items.

#### Use Case:

* If you want to a Data Type to a List.

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab08/solutions/data-type-lists.dart): 
```dart
void main() {
  Map<String, dynamic> filmStarWars = {"title": "Star Wars", "year": 1977};
  Map<String, dynamic> filmEmpire = {"title": "The Empire Strikes Back", "year": 1980};
  Map<String, dynamic> filmJedi = {"title": "The Return of the Jedi", "year": 1983};

  List listFilms = [filmStarWars, filmEmpire, filmJedi];

  Map<String, dynamic> first = listFilms[0];

  print(first);
  print(first['title']);
}
```


Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)
