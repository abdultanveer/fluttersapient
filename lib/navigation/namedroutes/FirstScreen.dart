import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First screen'),
      ),
      body: Center(
          child: ElevatedButton(
            child: Text('open second screen'),
            onPressed: (){
              Navigator.pushNamed(context, '/second');
            },
          )
      ),
    );
  }
}
