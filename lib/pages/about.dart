// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'homepage.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/printer_gif.gif",
          height: 60,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            padding: EdgeInsets.all(13),
            child: Image.asset("assets/images/heriot_watt_logo.png"),
          )
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: <Color>[
                  Color(0xFF880E4F),
                  Color(0xFFD32F2F),
                  Color(0xFFFFA726),
                  Color(0xFFFBC02D),
                ]),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(0.2),
                    offset: Offset.zero,
                  ),
                ],
              ),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipOval(
                    child: Material(
                      child: IconButton(
                        icon: Icon(Icons.keyboard_return, color: Colors.black),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Material(
                      child: IconButton(
                        icon: Icon(Icons.home, color: Colors.black),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                      ),
                    ),
                  ),
                  ClipOval(
                    child: Material(
                      child: IconButton(
                        icon: Icon(Icons.help, color: Colors.black),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )
      ), 
    );
  }
}