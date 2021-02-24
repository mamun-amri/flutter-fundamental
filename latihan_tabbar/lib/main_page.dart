import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var orange = Color(0xfffaa516);
    var grey = Color(0xffc4c4c4);
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
              child: Icon(Icons.shopping_bag_outlined, color: black, size: 35),
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
        body: TabBarView(
          children: [
            // tab featured
            Container(
              margin: EdgeInsets.fromLTRB(30, 20, 30, 10),
              child: Column(
                children: [
                  // slider
                  Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: black,
                        image: DecorationImage(
                            image: AssetImage("assets/slide1.jpg"),
                            fit: BoxFit.cover)),
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  ),
                  // menu
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildRow(black, "Chair", "assets/1.jpg"),
                        buildRow(black, "Shopa", "assets/2.jpg"),
                        buildRow(black, "Pasions", "assets/3.jpg"),
                      ]),
                  Container(
                    margin: EdgeInsets.zero,
                    child: Flexible(
                      child: Row(children: [
                        Flexible(
                            flex: 2,
                            child:
                                buildRow(black, "Plastation", "assets/4.jpg")),
                        Flexible(
                            flex: 3,
                            child: buildRow(black, "Earphone", "assets/5.jpg")),
                      ]),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Best Seller",
                      style: TextStyle(
                          fontSize: 15,
                          color: black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //best seller
                  Column(
                    children: [
                      Material(
                        color: Colors.transparent,
                        elevation: 2,
                        borderRadius: BorderRadius.circular(4),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                decoration: BoxDecoration(
                                  color: grey,
                                  image: DecorationImage(
                                    image: AssetImage("assets/6.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // nama barang dan warna
                                  Row(
                                    children: [
                                      Text(
                                        "Elevator",
                                        style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                  // detail barang
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                    child: Text(
                                      "lorem ipsum any thing that",
                                      style: TextStyle(
                                          color: black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ),
                                  ),
                                  // harga
                                  Row(
                                    children: [
                                      Text(
                                        "Rp. 100.000",
                                        style: TextStyle(
                                            color: black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 10,
                                            fontStyle: FontStyle.italic,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: Color(0xffd32f3f)),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        child: Text(
                                          "Rp. 89.000",
                                          style: TextStyle(
                                              color: black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            // tab room
            buildRow(black, "Badcooper", "assets/3.jpg"),
            // tab style
            buildRow(black, "Badcooper", "assets/3.jpg"),
          ],
        ),
      ),
    ));
  }

  Row buildRow(Color black, String text, String img) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              height: 75,
              width: 75,
              child: Material(
                color: Colors.transparent,
                elevation: 5,
                child: Image(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
                child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.w400, color: black),
            ))
          ],
        ),
      ],
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
