// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:video_app/models/category.dart';
import 'package:video_app/pages/videos.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
        color: Color(0xFF880E4F),
        name: "Instructional Videos",
        imgName: 'dash', 
        subCategories: [],
        icon: Icons.video_camera_front,
        pagename: 'video'
        ),
      Category(
        color: Color(0xFFD32F2F),
        name: "Written Manual",
        imgName: 'dash', 
        subCategories: [],
        icon: Icons.menu_book,
        pagename: 'manual'
        ),
        
      Category(
        color: Color(0xFFFFA726),
        name: "About Us",
        imgName: 'dash', 
        subCategories: [],
        icon: Icons.group, 
        pagename: 'about'
        ),
      Category(
        color: Color(0xFF880E4F),
        name: "Contact us",
        imgName: 'dash', 
        subCategories: [],
        icon: Icons.help,
        pagename: 'help'
        ),
    ];
  }
}


                              