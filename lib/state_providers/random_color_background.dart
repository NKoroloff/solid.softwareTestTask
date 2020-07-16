import 'package:flutter/material.dart';
import 'dart:math' as math;

class RandomColorBackground with ChangeNotifier {
  Color _randomColorBackground = Color(0xFFFFFF);

  Color setRandomBacgroundColor() {
    Color randomColorBackground =
        Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  
    _randomColorBackground = randomColorBackground;

    notifyListeners();
    return _randomColorBackground;
  }

  Color get getRandomColorBacground => _randomColorBackground;
}
