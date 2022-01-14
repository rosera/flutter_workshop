# Lab 01 - Variables

Dart has a number of variable types available to the developer.
Variables are used to store a reference to a value.

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)

# Integer 

Dart uses integers to represent whole numbers.

#### Use Case:

* If you need to store a whole number i.e. int myNumber = 1

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab01/solutions/hello-integer.dart): 
```dart
int maxNumberOfPeople = 35;
```

# Double 

Dart uses floats to represent number precision.

#### Use Case:

* If you need to store a decimal number i.e. double = 1.5 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab01/solutions/hello-double.dart): 
```dart
double priceOfCakes = 2.99;
```

# Boolean 

Dart uses bool to represent a true/false scenario

#### Use Case:

* If you need to indicate something is true 
* If you need to indicate something is false 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab01/solutions/hello-bool.dart): 

```dart
bool isDartCool = true;
bool isShopOpen = false;
```

# String

Dart uses strings to represent multiple characters

#### Use Case:

* If you need to store a name i.e 'Seth Ladd'
* If you need to store an address i.e. '1600 Amphitheatre Parkway, Mountain View, CA 94043, USA'
* If you need to store a multiline i.e. 'Super long text ... still super long text ... still going' 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab01/solutions/hello-string.dart): 

```dart
  String myFirstName = 'Seth';
  String myFavouritePhrase = 'This elixir mister got a maze in vista';
  String myOtherName = "Doug";

  String multiLine = '''
  Hello
  This is a multi-line
  Text which is over multiple line
  ''';

  print(myFirstName);
  print(myFavouritePhrase);
  print(myOtherName);
  print(multiLine);
```


Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)
