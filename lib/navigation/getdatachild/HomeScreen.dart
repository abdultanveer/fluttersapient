import 'package:flutter/material.dart';
import 'dart:developer' as developer;

import 'SelectionButton.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    developer.log('message- build', name: 'getdatachild-HomeScreen');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Returning Data Demo'),
      ),
      body: const Center(
        child: SelectionButton(),
      ),
    );
  }
}