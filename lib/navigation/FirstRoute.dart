import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First route'),
      ),
      body: Center(
          child: ElevatedButton(
            child: Text('open second route'),
            onPressed: (){
              
            },
          )
      ),
    );
  }
}
