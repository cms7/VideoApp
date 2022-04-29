// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Image.asset(
              'assets/images/printer_gif.gif',
              height: 200,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
            SizedBox(
              height: 100,
            ),
            Image.asset('assets/images/heriot_watt_logo.png', height: 70),
          ],
        ),
      ),
    );
  }
}
