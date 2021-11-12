import 'package:flutter/material.dart';

void main() => runApp(MyApp()); //fat arrow notation

Widget titleSection = Container(
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: Text('lake compound')),
            Text(
              'in switzerland',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red,
      ),
      Text('41')
    ],
  ),
);

Widget textSection = const Padding(
  padding: EdgeInsets.all(32),
  child: Text('description about the lake'),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE')
      ],
    );
    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text(' appbar title demo'),
          ),
          body: Column(
            children: [
              Image.asset('images/lake.jpg', height: 600, width: 240,fit: BoxFit.scaleDown,),
              titleSection,
              buttonSection,
              textSection,
            ],
          ),
        ));
  }

  Column _buildButtonColumn(Color color, IconData iconData, String label) {
    return Column(
      children: [
        Icon(
          iconData,
          color: color,
        ),
        Container(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
