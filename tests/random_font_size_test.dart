// This is a unit tests of getting random number (for fontSize)

import 'package:flutter_test/flutter_test.dart';
import 'package:flutterapp/state_providers/random_font_size.dart';

void main() {
  final checkRandom = RandomFontSize();
  group('Group test to check random number in range  < 10', () {
    test('check random in range 10 #1', () {
      expect(checkRandom.setRandomNumber(10), checkRandom.getRandomNumber);
    });
     test('check random in range 10 #2', () {
      expect(checkRandom.setRandomNumber(10), checkRandom.getRandomNumber);
    });
     test('check random in range 10 #3', () {
      expect(checkRandom.setRandomNumber(10), checkRandom.getRandomNumber);
    });
     test('check random in range 10 #4', () {
      expect(checkRandom.setRandomNumber(10), checkRandom.getRandomNumber);
    });
     test('check random in range 10 #5', () {
      expect(checkRandom.setRandomNumber(10), checkRandom.getRandomNumber);
    });
     test('check random in range 10 #6', () {
      expect(checkRandom.setRandomNumber(10), checkRandom.getRandomNumber);
    });
    test('check random in range 10 #6', () {
      expect(checkRandom.setRandomNumber(10), checkRandom.getRandomNumber);
    });
  });

  group('Group test to check random number in range  < 100', () {
    test('check random in range 100 #1', () {
      expect(checkRandom.setRandomNumber(100), checkRandom.getRandomNumber);
    });
     test('check random in range 100 #2', () {
      expect(checkRandom.setRandomNumber(100), checkRandom.getRandomNumber);
    });
     test('check random in range 100 #3', () {
      expect(checkRandom.setRandomNumber(100), checkRandom.getRandomNumber);
    });
     test('check random in range 100 #4', () {
      expect(checkRandom.setRandomNumber(100), checkRandom.getRandomNumber);
    });
     test('check random in range 100 #5', () {
      
      expect(checkRandom.setRandomNumber(100), checkRandom.getRandomNumber);
    });
     test('check random in range 100 #6', () {
      expect(checkRandom.setRandomNumber(100), checkRandom.getRandomNumber);
    });
  });
}
