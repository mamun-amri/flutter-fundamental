import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Fonst Style")),
        body: Center(
          child: Text(
            "ini adalah text",
            style: TextStyle(
              fontFamily: "Roboto_Light",
              fontSize: 20,
              fontStyle: FontStyle.italic,
              decoration: TextDecoration.underline,
              decorationColor: Colors.amber,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          ),
        ),
      ),
    );
  }
}
