import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aplikasi Hello World"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 100,
                child: Text("Semangat Belajar untuk Masa Depan yang cerah",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    )))),
      ),
    );
  }
}
