import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[800],
        body: Center(
            child: Container(
          // margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(color: Colors.blueGrey[800]),
          child: ShaderMask(
            shaderCallback: (rectangle) {
              return LinearGradient(
                colors: [Colors.transparent, Colors.black],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(
                  Rect.fromLTRB(0, 0, rectangle.width, rectangle.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image(
              image: NetworkImage(
                  "https://saintif.com/wp-content/uploads/2020/08/gambar-pemandangan-yang-indah-678x381.png.webp"),
            ),
          ),
        )),
      ),
    );
  }
}
