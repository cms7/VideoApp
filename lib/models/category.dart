import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  String name;
  Color color;
  List<Category> subCategories;
  String imgName;
  IconData icon;
  String pagename;

  Category({
    required this.pagename,
    required this.name,
    required this.color,
    required this.subCategories,
    required this.imgName,
    required this.icon,
  });
}
