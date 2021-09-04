# Lab 02 - Flow Statements 

Dart has a number of conditional statements available to the developer.
Condition statements allow logic to applied to a program.

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)

# If/Else 

If/Else are used to control logical flow within an application.

#### Use Case:

* If you need to make a choice within an application

#### Example: 
```dart
var isFootball = true;

if (isFootball) {
  print('Go Football!');
} else {
  print('Go Sports!);
}
```

# For

A For statement provides a loop where the condition is checked on entry.

#### Use Case:

* If you need to perform a task a certain amount of times.

#### Example: 

```dart
var maxIterations = 10;
for (var i = 0; i < maxIterations; i++) {
  print ('Iteration: $maxIterations')
}
```

# While

A While statement provides a loop where the condition is checked on entry. 

#### Use Case:

* If you need to perform a task and perform the loop only while the condition is valid 

#### Example: 

```dart
var isTrue = true;
while (isTrue) {
  isTrue = false;
}
```


Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)
