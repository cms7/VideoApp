// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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

            Text('Welcome',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5,),
              Text('2 Laser Stereolithography\n3D Printer App',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5,),
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xFF880E4F),
                              Color(0xFFD32F2F),
                              Color(0xFFFFA726),
                              Color(0xFFFBC02D),
                            ],
                          ),
                        ),
                      ),
                    ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboard()
                      )
                    );
                  },
                    child: Text("Press to Enter",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        ), 
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Image.asset('assets/images/heriot_watt_logo.png', height: 40),
          ],
        ),
      ),
      ]
    )
    )
    );
  }
}

