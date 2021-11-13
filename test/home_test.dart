import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttersapient/sampleunittest/models/favorites.dart';
import 'package:fluttersapient/sampleunittest/screens/home.dart';
import 'package:provider/provider.dart';


Widget createHomeScreen() => ChangeNotifierProvider<Favorites>(
  create: (context) => Favorites(),
  child: MaterialApp(
    home: HomePage(),
  ),
);
//what are callbacks
void main() {
  group('Home Page Widget Tests', () {
    // BEGINNING OF NEW CONTENT
    testWidgets('Testing if ListView shows up', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      expect(find.byType(ListView), findsOneWidget);
    });


    testWidgets('Testing Scrolling', (tester) async {
      await tester.pumpWidget(createHomeScreen()); //i am waiting for homescreen to get created -- 1min 1 day
      expect(find.text('Item 0'), findsOneWidget);
      await tester.fling(find.byType(ListView), Offset(0, -200), 3000);
      await tester.pumpAndSettle();
      expect(find.text('Item 0'), findsNothing);
    });
  });
}