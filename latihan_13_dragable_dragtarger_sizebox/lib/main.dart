import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.amber;
  Color color2 = Colors.red;
  Color targetColor;

  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Dragable"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data: color1,
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1.withOpacity(0.5),
                      shape: StadiumBorder(),
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color1,
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                  ),
                ),
                Draggable<Color>(
                  data: color2,
                  feedback: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2.withOpacity(0.5),
                      shape: StadiumBorder(),
                    ),
                  ),
                  childWhenDragging: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black26,
                      shape: StadiumBorder(),
                    ),
                  ),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: color2,
                      shape: StadiumBorder(),
                      elevation: 5,
                    ),
                  ),
                ),
              ],
            ),
            DragTarget<Color>(
                onWillAccept: (value) => true,
                onAccept: (value) {
                  isAccepted = true;
                  targetColor = value;
                },
                builder: (context, candidates, rejected) {
                  return (isAccepted)
                      ? SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: targetColor,
                            shape: StadiumBorder(),
                            elevation: 5,
                          ),
                        )
                      : SizedBox(
                          width: 100,
                          height: 100,
                          child: Material(
                            color: Colors.black26,
                            shape: StadiumBorder(),
                          ),
                        );
                }),
          ],
        ),
      ),
    );
  }
}
