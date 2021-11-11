import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //fat arrow notation

Widget titleSection = Container(
  child: Row(
    children: [
      
    ],
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text(' appbar title demo'),
          ),
          body: Column(
            children: [
              titleSection,
            ],
          ),
        ));
  }
}
