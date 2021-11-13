import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second route'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('go back'),
          onPressed: (){
            Navigator.pop(context);
          },
        )
      ),
    );
  }
}
