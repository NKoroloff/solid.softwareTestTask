// This is a unit tests of getting random number (for fontSize)

import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapp/state_providers/random_color_background.dart';

void main() {
  final checkRandom = RandomColorBackground();
  group('Group test to check random color', () {
    test('check random color #1', () {
      expect(checkRandom.setRandomBacgroundColor(), checkRandom.getRandomColorBacground);
    });
    test('check random color #2', () {
      expect(checkRandom.setRandomBacgroundColor(), checkRandom.getRandomColorBacground);
    });
    test('check random color #3', () {
      expect(checkRandom.setRandomBacgroundColor(), checkRandom.getRandomColorBacground);
    });
    test('check random color #4', () {
      expect(checkRandom.setRandomBacgroundColor(), checkRandom.getRandomColorBacground);
    });
    test('check random color #5', () {
      expect(checkRandom.setRandomBacgroundColor(), checkRandom.getRandomColorBacground);
    });
    test('check random color #6', () {
      expect(checkRandom.setRandomBacgroundColor(), checkRandom.getRandomColorBacground);
    });
  });
}
