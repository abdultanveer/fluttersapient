import 'package:flutter/material.dart';

import 'ScreenArguments.dart';


class ExtractArgsScreen extends StatelessWidget {
  const ExtractArgsScreen({Key? key}) : super(key: key);

    static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments; //as is a keyword for typecasting
    //args is of type ScreenArguments
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
