import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var orange = Color(0xfffaa516);
    // var grey = Color(0xffc4c4c4);
    var black = Color(0xff383d43);
    var white = Color(0xffffffff);

    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: white,
            title: Text(
              "Dashboard",
              style: TextStyle(
                  color: black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Roboto"),
            ),
            actions: [
              Icon(Icons.search, color: black, size: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child:
                    Icon(Icons.shopping_bag_outlined, color: black, size: 35),
              ),
            ],
            bottom: TabBar(
              indicatorColor: black,
              tabs: [
                buildTab(black, "Featured"),
                buildTab(black, "Room"),
                buildTab(black, "Style"),
              ],
            ),
          ),
          body: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: black,
                    image: DecorationImage(
                        image: AssetImage("assets/slide1.jpg"),
                        fit: BoxFit.fitWidth)),
                margin: EdgeInsets.fromLTRB(30, 10, 20, 30),
                height: 130,
              )
            ],
          ),
        ),
      ),
    );
  }

  Tab buildTab(Color black, String text) {
    return Tab(
      child: Text(
        text,
        style: TextStyle(
            fontFamily: "Roboto",
            color: black,
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
