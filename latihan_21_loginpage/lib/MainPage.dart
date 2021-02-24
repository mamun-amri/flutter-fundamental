import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBigDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    var color2 = Color(0xffff6da7);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffeeeeee),
        body: Stack(
          children: [
            Positioned(
              right: -getSmallDiameter(context) / 3,
              top: -getSmallDiameter(context) / 3,
              child: Container(
                width: getSmallDiameter(context),
                height: getSmallDiameter(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffb226b2), Color(0xffff6da7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
              ),
            ),
            Positioned(
              left: -getBigDiameter(context) / 5,
              top: -getBigDiameter(context) / 5,
              child: Container(
                child: Center(
                  child: Text(
                    "dribblee",
                    style: TextStyle(
                        fontFamily: "Pacifico",
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 30),
                  ),
                ),
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xffb226b2), Color(0xffff6da7)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
              ),
            ),
            Positioned(
              bottom: -getBigDiameter(context) / 2,
              right: -getBigDiameter(context) / 2,
              child: Container(
                width: getBigDiameter(context),
                height: getBigDiameter(context),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xfff3e9ee)),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 300, 20, 10),
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Color(0xffff4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffff4891)),
                            ),
                            labelText: "Email",
                            labelStyle: TextStyle(color: Color(0xffff4891)),
                          ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.vpn_key,
                              color: Color(0xffff4891),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xffff4891)),
                            ),
                            labelText: "Password",
                            labelStyle: TextStyle(color: Color(0xffff4891)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 20, 0),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Color(0xffff4891)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: 40,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xffb226b2),
                                    Color(0xffff6da7)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                            ),
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                onTap: () {},
                                splashColor: Colors.amber,
                                child: Center(
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          mini: true,
                          elevation: 0,
                          onPressed: () {},
                          child: Image(
                            image: AssetImage("assets/images/facebook.png"),
                          ),
                        ),
                        FloatingActionButton(
                          mini: true,
                          elevation: 0,
                          onPressed: () {},
                          child: Image(
                            image: AssetImage("assets/images/twitter.png"),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't Have an Account? ",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                            color: color2, fontWeight: FontWeight.w700),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
