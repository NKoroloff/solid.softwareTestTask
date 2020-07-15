import 'package:flutter/material.dart';
import 'dart:math' as math;

class RandomFontSize with ChangeNotifier {
  int _randomNumber = 36;

  int setRandomNumber(int number) {
    int randomNumber = math.Random().nextInt(number);

    if (randomNumber < 12) {
      _randomNumber = 36;
    } else{
      _randomNumber = randomNumber;
    }
    
    notifyListeners();
    return _randomNumber;
  }

  int get getRandomNumber => _randomNumber;
}
