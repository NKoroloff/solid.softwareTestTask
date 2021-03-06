import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'screens/random_background.dart';
import 'state_providers/random_color_background.dart';
import 'state_providers/random_font_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
  runApp(MaterialApp(home: TestApplication()));
}

class TestApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter testApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => RandomColorBackground()),
          ChangeNotifierProvider(create: (context) => RandomFontSize()),
        ],
        child: Scaffold(
          //resizeToAvoidBottomInset: false,
          body: RandomBackground(),
        ),
      ),
    );
  }
}
