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
          title: Text("Image"),
        ),
        body: Center(
          child: Container(
            height: 200,
            width: 200,
            padding: EdgeInsets.all(3),
            color: Colors.amber,
            child: Image(
              image: AssetImage("assets/images/makkah.jpg"),
              // image: NetworkImage(
              //     "https://cdn.idntimes.com/content-images/post/20201211/blackpink-summer-diary-0cfae33d111693876ac0ff22d7ec2b26_600x400.jpg"),
              fit: BoxFit.contain,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
