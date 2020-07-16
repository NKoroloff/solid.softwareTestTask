import 'package:flutter/material.dart';
import 'package:flutterapp/state_providers/random_color_background.dart';
import 'package:flutterapp/state_providers/random_font_size.dart';
import 'package:flutterapp/widgets/animated_background.dart';
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
        child: AnimatedBackground(
            size: size,
            randomColorState: randomColorState,
            randomSizeState: randomSizeState),
      ),
    );
  }
}

