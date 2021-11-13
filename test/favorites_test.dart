import 'package:fluttersapient/sampleunittest/models/favorites.dart';
import 'package:test/test.dart';

void main() {
  group('Testing App Provider', () {
    var favorites = Favorites();

    test('A new item should be added', () {
      var number = 35;
      favorites.add(number);
      var actual = favorites.items.contains(number);
      var expected = true;
      expect(actual,expected);
    });
  });
}