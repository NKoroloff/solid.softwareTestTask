import 'package:flutter/material.dart';
import 'package:flutterapp/constants/strings.dart';
import 'package:flutterapp/state_providers/random_color_background.dart';
import 'package:flutterapp/state_providers/random_font_size.dart';

class AnimatedBackground extends StatelessWidget {
  const AnimatedBackground({
    @required this.size,
    @required this.randomColorState,
    @required this.randomSizeState,
  });

  final Size size;
  final RandomColorBackground randomColorState;
  final RandomFontSize randomSizeState;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: size.width,
      height: size.height,
      decoration: BoxDecoration(
        color: randomColorState.getRandomColorBacground,
      ),
      duration: Duration(milliseconds: 400),
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                heyThere,
                style: TextStyle(
                  fontSize: randomSizeState.getRandomNumber.toDouble(),
                  fontWeight: FontWeight.bold,
                ),
              ),
              //bonus : add visual display random color, and fontSize
              Text(randomColorState.getRandomColorBacground.toString()),
              Text('fontSizeText Hey there:' +
                  randomSizeState.getRandomNumber.toString()),
            ]),
      ),
    );
  }
}
