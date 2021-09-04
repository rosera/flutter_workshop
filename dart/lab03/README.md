# Lab 03 - Functions

Dart has enables developers to group code.
Functions allow program logic to be grouped within an application.

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)

# Functions

Using a function without parameters means no information is being passed.

#### Use Case:

* Use a function without parameters where no data is to be passed. 

#### Example: 
```dart
printHello(){
  print('Hello!');
}
```

Note: In the above function it just has one expression, so this can be shorten e.g.
```
printHello() => print('Hello');
```


# Functions

If data is to be passed to a function then ensure it is enclosed within the brackets.

#### Use Case:

* Use function with parameters where data is required by the function to be called.

#### Example: 

```dart
printHello(name){
  print('Hello $name!');
}
```

# Functions 

To return a value from function, use the `return` statement. 

#### Use Case:

Return statement can be used to indicate:
*  state of the function on completion e.g. OK/NOT
*  value to be returned e.g. read data and return it  

#### Example: 

```dart
printHello(name){
  print('Hello $name!');
  return true;
}
```


Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)
