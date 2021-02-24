import 'package:flutter/material.dart';

import 'MainPage.dart';

void main() {
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((_) {

  // });
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: MainPage(),
    );
  }
}
