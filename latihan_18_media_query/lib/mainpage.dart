import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("latihan media query"),
      ),
      body: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
              // color: Colors.lightBlue[50],
              // width: MediaQuery.of(context).size.width / 3,
              // height: MediaQuery.of(context).size.height / 2,
              children: generateChildren(),
            )
          : Row(
              children: generateChildren(),
            ),
    );
  }

  List<Widget> generateChildren() {
    return [
      Container(
        width: 100,
        height: 100,
        color: Colors.blue[600],
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.green[100],
      ),
      Container(
        width: 100,
        height: 100,
        color: Colors.red[200],
      ),
    ];
  }
}
