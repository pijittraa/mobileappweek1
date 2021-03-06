import 'package:flutter/material.dart';
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/screen/dashboard.dart';
import 'package:mobileappweek1/screen/login.dart';
import 'package:mobileappweek1/screen/index.dart';
import 'package:mobileappweek1/screen/rejister.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Index(),
      routes: {
        'Login': (context) => Login(),
        'Register': (context) => Register(),
        'Dashboard': (context) => Dashboard(),
      },
      theme: ThemeData(
        primaryColor: pColor,
        secondaryHeaderColor: sColor,
      ),
    );
  }
}
