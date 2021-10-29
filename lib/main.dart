import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('appbar title'),
          centerTitle: true,
          backgroundColor: Colors.green[500],
        ),

        body: Center(
            child: Text(
                'welcome to sapient'
            ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Text('click'),
        ),

      ),
    ));
