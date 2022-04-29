// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_app/helpers/utils.dart';
import 'package:video_app/models/category.dart';
import 'package:video_app/models/categorycard.dart';
import 'package:video_app/pages/homepage.dart';
import 'package:video_app/pages/videos.dart';

import 'help.dart';

class Dashboard extends StatelessWidget {
  List<Category> categories = Utils.getMockedCategories();
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Select a Category:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                padding: EdgeInsets.only(bottom: 120),
                itemCount: categories.length,
                itemBuilder: (BuildContext ctx, int index) {
                  return CategoryCard(
                      category: categories[index],
                      onCardClick: () {
                        Navigator.pushNamed(
                            context, categories[index].pagename);
                      });
                },
              ))
            ],
          ),
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
      )),
    );
  }
}
