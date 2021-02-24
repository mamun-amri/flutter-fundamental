import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  TextEditingController username, password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: textField(
                      "Username", Icon(Icons.person), false, username)),
              textField("Password", Icon(Icons.lock), true, password),
              Material(
                borderRadius: BorderRadius.circular(20),
                elevation: 3,
                child: Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        colors: [Colors.blueAccent, Colors.lightBlue],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.purple,
                      borderRadius: BorderRadius.circular(20),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, color: Colors.amber),
                        ),
                      ),
                      onTap: () {
                        // if (username.text == "mamun" &&
                        //     password.text == "123") {
                        //   Navigator.pushReplacement(context,
                        //       MaterialPageRoute(builder: (context) {
                        //     return Homepage();
                        //   }));
                        // } else {
                        //   Scaffold.of(context).showSnackBar(SnackBar(
                        //       content: Text("Username atau Password salah!")));
                        // }
                        print(username.toString());
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container textField(
      String text, Icon icon, bool bool, TextEditingController controller) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: TextField(
        obscureText: bool,
        decoration: InputDecoration(
            labelText: text.toString(),
            prefixIcon: icon,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
        controller: controller,
      ),
    );
  }
}
