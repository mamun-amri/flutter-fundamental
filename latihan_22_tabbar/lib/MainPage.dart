import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var tabBar = TabBar(
      indicator: BoxDecoration(color: Colors.green[200]),
      tabs: [
        Tab(
          icon: Icon(Icons.comment),
        ),
        Tab(
          text: "Computer",
        ),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(tabBar.preferredSize.height),
                  child: Container(color: Colors.green[100], child: tabBar)),
            ),
          ),
          body: TabBarView(children: [
            Center(child: Text("tab 1")),
            Center(child: Text("tab 2")),
          ]),
        ),
      ),
    );
  }
}
