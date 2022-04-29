// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'help.dart';
import 'homepage.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
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
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
          Color(0xFF880E4F),
          Color(0xFFD32F2F),
          Color(0xFFFFA726),
          Color(0xFFFBC02D),
        ])),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 25, right: 10),
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text("Video Page",
                      style: TextStyle(fontSize: 20, color: Colors.white)),
                  SizedBox(
                    height: 80,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.2)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.timer, size: 20, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              "x min",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 200,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white.withOpacity(0.2)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.handyman_outlined,
                                size: 20, color: Colors.white),
                            SizedBox(width: 5),
                            Text(
                              "1. Basic Setup",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                  )),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Instructional Videos:",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 40,
                          ),
                          Icon(
                            Icons.loop,
                            size: 20,
                            color: Colors.black,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Repeat",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        ],
                      ),
                      //Expanded(child: ListView.builder(
                      //itemCount: videoInfo.length,
                      //itemBuilder: (_, int index){

                      // return GestureDetecotor(
                      //    onTap(){
                      //      debugPrint(index.toString());
                      // },
                      //  child: Container(
                      //    height:135,
                      //    child: Column(
                      //      children: [
                      //        Row(
                      //          children:[
                      //             Container(
                      //                width:80,
                      //                hegiht:80,
                      //                decortation: BoxDecortation(
                      //                  borderRadius: BorderRadius.circular(10),
                      //                  image: DecorationImage(
                      //                    image: AssetImage(videoInfo[index]["thumbnail"]
                      //                    Text(
                      //                    style: TextStyle(
                      //                      fontSize: 18,
                      //                      fontWeight: FontWeight.bold,
                      //    ),
                      //    ),
                      //    ),
                      //    ),
                      //    ),
                      //    ), 
                      //    ],
                      //    ),
                      //    ],
                      //   ),
                      // ),
                      // );

                      //}))
                    ],
                  )
                ],
              ),
            )),
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
                          icon:
                              Icon(Icons.keyboard_return, color: Colors.black),
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
                                    builder: (context) => HelpPage()));
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
