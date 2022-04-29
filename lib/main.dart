// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:video_app/pages/about.dart';
import 'package:video_app/pages/dashboard.dart';
import 'package:video_app/pages/help.dart';
import 'package:video_app/pages/manual.dart';
import 'package:video_app/pages/splashpage.dart';
import 'package:video_app/pages/videos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => SplashScreen(),
      'dash': (context) => Dashboard(),
      'video': (context) => VideoPage(),
      'manual': (context) => ManualPage(),
      'about': (context) => AboutPage(),
      'help': (context) => HelpPage(),
    });
  }
}
