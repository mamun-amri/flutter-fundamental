import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[100],
        appBar: AppBar(
          title: Text("Latihan Container"),
        ),
        body: Container(
          color: Colors.lightBlue,
          margin: EdgeInsets.fromLTRB(10, 15, 20, 25),
          padding: EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Colors.lightBlue[200], Colors.lightBlue[100]])),
          ),
        ),
      ),
    );
  }
}
