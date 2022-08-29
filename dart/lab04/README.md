# Lab 04 - Import Statements

Dart allows developers to use external code in a variety of formates.
Import packages tell Dart which external code is to be used in the application.

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)

# Import 

 Built in Dart library URIs use the dart: scheme to refer to a library. Other libraries can use a file system path or the package: scheme to specify its URI. Libraries provided by a package manager such as the pub tool uses the package: scheme.
 There are many libraries available in dart, some of the commonly used libraries and their description are:
 |Sr No.     | Library       | Description                                                                                                                                                       |
 | :---:     | :---          | :---                                                                                                                                                              |
 |1          |dart:io        |File, socket, HTTP, and other I/O support for server applications. This library does not work in browser-based applications. This library is imported by default.  |
 |2          |dart:core      |Built-in types, collections, and other core functionality for every Dart program. This library is automatically imported.                                          |
 |3          |dart:math      |Mathematical constants and functions, plus a random number generator.                                                                                              |
 |4          |dart:convert   |Encoders and decoders for converting between different data representations, including JSON and UTF-8.                                                             |
 |5          |dart:typed_data|Lists that efficiently handle fixed sized data (for example, unsigned 8 byte integers).                                                                            |

#### Use Case:

* Packages
* Classes 

#### Example: 
```dart
import 'dart:math'; 
void main() { 
   print("Square root of 36 is: ${sqrt(36)}"); 
}
```

Return to [Dart Essentials](https://github.com/rosera/flutter_workshop/tree/main/dart)
