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
          title: Text("Stack"),
        ),
        body: Stack(
          children: [
            // background
            Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.lightBlue[50],
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            )),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.lightBlue[50],
                            )),
                      ],
                    ))
              ],
            ),
            // text
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        "Ini text dilapisan tengah",
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ],
                )
              ],
            ),
            // tombol
            Align(
              alignment: Alignment.bottomCenter,
              child: RaisedButton(
                onPressed: () {},
                child: Text("Tombol"),
                color: Colors.amber,
              ),
            )
          ],
        ),
      ),
    );
  }
}
