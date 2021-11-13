import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'HomeScreen.dart';

void main() {
  developer.log('message- main', name: 'getdatachild-Home');
  runApp(
    const MaterialApp(
      title: 'Returning Data',
      home: HomeScreen(),
    ),
  );
}