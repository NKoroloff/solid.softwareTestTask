import 'package:flutter/material.dart';
import 'package:flutterapp/constants/strings.dart';
import 'package:flutterapp/state_providers/random_color_background.dart';
import 'package:flutterapp/state_providers/random_font_size.dart';
import 'package:provider/provider.dart';

class RandomBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final randomColorState = Provider.of<RandomColorBackground>(context);
    final randomSizeState = Provider.of<RandomFontSize>(context);

    return GestureDetector(
      onDoubleTap: () => randomSizeState.setRandomNumber(120),
      onTap: () => randomColorState.setRandomBacgroundColor(),
      child: SafeArea(
        top: false,
        child: AnimatedContainer(
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
        ),
      ),
    );
  }
}
