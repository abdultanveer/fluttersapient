import 'package:flutter/material.dart';
import 'package:fluttersapient/ParentWidget.dart';
import 'package:fluttersapient/TapBoxB.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State mgmt',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Demo')
        ),
        body: const Center(
          child: ParentWidget(),
        ),
      )
    );
  }

  void handleChange(bool value) {
  }
}


/**
 * the state is managed by the widget itself [TapboxA]
 */
class TapboxA extends StatefulWidget {
  const TapboxA({Key? key}) : super(key: key);

  @override
  _TapboxAState createState() => _TapboxAState();
}

/**
 * visualize it as content of the widget
 */
class _TapboxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _handleTap,
        child: Container(
          child: Text(
            _active ? 'Active' : 'InActive',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
          ),
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
              color: _active ? Colors.lightGreen : Colors.grey
          ),
        )
    );
  }

}
