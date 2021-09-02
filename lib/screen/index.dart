import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';

class Index extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Positioned(
              top: -20,
              left: -30,
              child: Image.asset(
                "asset/image/T02.png",
                width: size.width * 0.2,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "asset/image/logo.png",
                  width: size.width * 0.35,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome to KMUTNB",
                  style: TextStyle(
                    color: pColor,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset(
                  "asset/image/T03.jfif",
                  width: size.width * 0.9,
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    // padding: EdgeInsets.all(20),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    print("Hello World");
                    Navigator.pushNamed(context, 'Login');
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.amber[900],
                    padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                    shape: StadiumBorder(),
                  ),
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {
                    print("Hello World");
                    Navigator.pushNamed(context, 'Register'); 
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}