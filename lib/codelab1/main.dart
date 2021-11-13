import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'RandomWords.dart';


void main() => runApp(MyApp()); //fat arrow notation

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: ThemeData(          // Add the 5 lines from here...
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
      ),
      home: RandomWords(),
    );
  }
}
