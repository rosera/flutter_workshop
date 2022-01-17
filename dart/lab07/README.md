# Lab 07 - Maps 

Dart has Maps available to the developer.
Maps provider the ability to use kn object that is based on keys and values

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)

# Create a Map 

Dart uses Map to represent an object with keys and values.

#### Use Case:

* You want an object indexed using keys and values. 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab07/solutions/hello-maps.dart): 
```dart
void main() {
    Map starWars = {
    "title": "Star Wars",
    "year": 1977
  };

  print (starWars);
  print (starWars['title']);
  print (starWars['year']);
}
```


# Add information to a Map 

Dart uses Map to represent an object with keys and values.

#### Use Case:

* You want to add multiple items within a map. 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab07/solutions/adding-maps.dart): 
```dart
void main() {
  Map starWars = {"title": "Star Wars", "year": 1977};
  Map theEmpireStrikesBack = {"title": "The Empire Strikes Back", "year": 1980};

  Map listFilms = {"first": starWars, "second": theEmpireStrikesBack};

  print(listFilms);

  print(listFilms['first']);
  print(listFilms['first']['title']);
  print(listFilms['first']['year']);

  print(listFilms['second']);
  print(listFilms['second']['title']);
  print(listFilms['second']['year']);
}
```

# Validate Key in a Map 

Dart uses Map to represent an object with keys and values.

#### Use Case:

* If you want to validate if a key exists in a Map.

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab07/solutions/key-maps.dart): 
```dart
void main() {
  Map starWars = {"title": "Star Wars", "year": 1977};
  Map theEmpireStrikesBack = {"title": "The Empire Strikes Back", "year": 1980};

  Map listFilms = {"first": starWars, "second": theEmpireStrikesBack};

  if (listFilms['first']==null) {
    print ('Key does not exist');
  } else {
    print ('Key exists!');
  }
}
```

# Dereference variable from a Map 

Dart uses Map to represent an object with keys and values.

#### Use Case:

* If you want to validate if a key exists in a Map.

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab07/solutions/value-maps.dart): 
```dart
void main() {

  Map starWars = {"title": "Star Wars", "year": 1977};
  Map theEmpireStrikesBack = {"title": "The Empire Strikes Back", "year": 1980};

  Map listFilms = {"first": starWars, "second": theEmpireStrikesBack};

  Map firstFilm = listFilms['first'];

  String title  = firstFilm['title'];
  int    year   = firstFilm['year'];

  print (title);
  print (year);
}
```


Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)
