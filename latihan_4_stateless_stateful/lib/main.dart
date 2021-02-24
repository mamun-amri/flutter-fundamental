import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful widget demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                number.toString(),
                style: TextStyle(fontSize: 10 + number.toDouble()),
              ),
              RaisedButton(
                child: Text("Tambah"),
                onPressed: tombolTambah,
              )
            ],
          ),
        ),
      ),
    );
  }

  void tombolTambah() {
    //untuk mengset tempilannya
    setState(() {
      number = number + 1;
    });
  }
}
