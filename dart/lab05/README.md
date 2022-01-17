# Lab 05 - Classes

Dart has object notation to define a grouping of code and data.
Classes allow member access to specific code definitions.

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)

# Create a Class

Dart uses Classes to represent an object. 

#### Use Case:

* You want to create a Class 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab05/solutions/hello-class.dart): 
```dart
const numDays = 7;

class DaysLeftInWeek { 
  int currentDay = DateTime.now().weekday.toInt();

  int howManyDaysLeft(){
    return numDays - currentDay;
  }
}

void main() {
  var currentDay = DaysLeftInWeek();
  
  print ('Today is day ${currentDay.currentDay}');
  print ('We have ${currentDay.howManyDaysLeft()} day(s) left in the week');
}
```

# Use a Class constructor

Dart uses Classes to represent an object. 

#### Use Case:

* You want to create a Class constructor 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab05/solutions/constructor-class.dart): 
```dart
const numDays = 7;

class DaysLeftInWeek {
  int currentDay = 0;

  DaysLeftInWeek(){
    currentDay = DateTime.now().weekday.toInt();
  }

  int howManyDaysLeft(){
    return numDays - currentDay;
  }
}

void main() {
  var currentDay = DaysLeftInWeek();

  print ('Today is day ${currentDay.currentDay}');
  print ('We have ${currentDay.howManyDaysLeft()} day(s) left in the week');
}
```


# Extending a Class

Dart uses Classes to represent an object. 

#### Use Case:

* You want to extend a Class 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab05/solutions/extend-class.dart): 
```dart
class Media {
  String title = "";
  String type = "";

  Media(){ type = "Class"; }

  void setMediaTitle(String mediaTitle){ title = mediaTitle; }

  String getMediaTitle(){ return title; }

  String getMediaType(){ return type; }
}

class Book extends Media {
  String author = "";
  String isbn = "";

  Book(){ type = "Subclass"; }

  void setBookTitle(String bookTitle){ title = bookTitle; }

  void setBookAuthor(String bookAuthor){ author = bookAuthor; }

  void setBookISBN(String bookISBN){ isbn = bookISBN; }

  String getBookTitle(){ return title; }

  String getBookAuthor(){ return author; }

  String getBookISBN(){ return isbn; }
}

void main() {
  var myMedia = Media();

  myMedia.setMediaTitle('Tron');
  print ('Title: ${myMedia.getMediaTitle()}');
  print ('Type: ${myMedia.getMediaType()}');


  var myBook = Book();
  myBook.setBookTitle("Jungle Book");
  myBook.setBookAuthor("R Kipling");
  print ('Title: ${myBook.getMediaTitle()}');
  print ('Author: ${myBook.getBookAuthor()}');
  print ('Type: ${myBook.getMediaType()}');
}
```


# Extending a Class with Mixins

Dart uses Classes to represent an object. 

#### Use Case:

* You want to extend a Class with Mixins 

#### [Example](https://github.com/rosera/flutter_workshop/blob/main/dart/lab05/solutions/mixins-class.dart): 
```dart
abstract class SnickersOriginal {
  bool hasHazelnut = true;
  bool hasRice = false;
  bool hasAlmond = false;
}

abstract class SnickersCrisp {
  bool hasHazelnut = true;
  bool hasRice = true;
  bool hasAlmond = false;
}

class ChocolateBar {
  bool hasChocolate = true;
}

class CandyBar extends ChocolateBar with SnickersOriginal {
  List<String> ingredients = [];

  CandyBar(){
    if (hasChocolate){
      ingredients.add('Chocolate');
    }
    if (hasHazelnut){
      ingredients.add('Hazelnut');
    }
    if (hasRice){
      ingredients.add('Hazelnut');
    }
    if (hasAlmond){
      ingredients.add('Almonds');
    }
  }

  List<String> getIngredients(){
    return ingredients;
  }
}

void main() {
  var snickersOriginal = CandyBar();
  print ('Ingredients:');
  snickersOriginal.getIngredients().forEach((ingredient) => print(ingredient));
}
```

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)
