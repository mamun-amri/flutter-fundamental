import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String message = "ini adalah teks";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Methode"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              RaisedButton(
                child: Text("klik"),
                onPressed: () {
                  setState(() {
                    if (message == "ini adalah teks") {
                      message = "tombol sudah diklik";
                    } else {
                      message = "ini adalah teks";
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  // void tombolKlik() {
  //   setState(() {
  //     message = "tombol sudah diklik";
  //   });
  // }
}
