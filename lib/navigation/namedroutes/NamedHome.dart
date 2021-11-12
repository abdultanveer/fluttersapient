import 'package:flutter/material.dart';
import 'package:fluttersapient/navigation/namedroutes/FirstScreen.dart';
import 'package:fluttersapient/navigation/namedroutes/SecondScreen.dart';

void main(){
  runApp( MaterialApp(
    title: 'Demo named routes',
    initialRoute: '/',
    routes: {
      '/': (context)=> FirstScreen(),
      '/second': (context) => const SecondScreen(),
    },
  ));
}