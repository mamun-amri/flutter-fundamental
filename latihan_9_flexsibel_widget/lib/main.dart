import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flexsibel Layout"),
        ),
        body: Column(
          children: [
            Flexible(
                flex: 1,
                child: Row(
                  children: [
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.lightGreen,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.lightGreenAccent,
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black,
                        ))
                  ],
                )),
            Flexible(
                flex: 2,
                child: Container(
                  color: Colors.redAccent,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  color: Colors.lightBlue,
                ))
          ],
        ),
      ),
    );
  }
}
