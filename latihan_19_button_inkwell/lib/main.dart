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
          title: Text("Raisebutton"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {},
                color: Colors.yellow,
                shape: StadiumBorder(),
                child: Text("Raised Button"),
              ),
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3,
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Colors.purple, Colors.pink],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {},
                      child: Center(
                          child: Text(
                        "My Button",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w600),
                      )),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
