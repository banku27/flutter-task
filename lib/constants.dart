import 'package:flutter/material.dart';
import 'package:flutter_task/screens/chat_screen.dart';
import 'package:flutter_task/screens/guidance_screen.dart';
import 'package:flutter_task/screens/home_screen.dart';
import 'package:flutter_task/screens/profile_screen.dart';

class AppIcons {
  static const wallet = 'assets/guruji/wallet@3x.png';
  static const search = 'assets/guruji/search@3x.png';
  static const profile = 'assets/guruji/profile@3x.png';
  static const en = 'assets/guruji/en@3x.png';
  static const home = 'assets/guruji/home@3x.png';
  static const guidance = 'assets/guruji/guidence@3x.png';
  static const chat = 'assets/guruji/chat@3x.png';
  static const guruji = 'assets/guruji/guruji.png';
  static const google = 'assets/guruji/search-1@3x.png';
  static const facebook = 'assets/guruji/facebook-1@3x.png';
}

const List<String> categoriesList = [
  "Explore",
  "Love",
  "Marriage",
  "Home",
  "Career",
  "Life",
  "Health",
];

const List<Widget> screens = [
  HomeScreen(),
  GuidanceScreen(),
  ChatScreen(),
  ProfileScreen(),
];

const List<String> categoryLogos = [
  "assets/guruji/explore@3x.png",
  "assets/guruji/love-1@3x.png",
  "assets/guruji/marriage-1@3x.png",
  "assets/guruji/home@3x.png",
  "assets/guruji/carrier@3x.png",
  "assets/guruji/life-1@3x.png",
  "assets/guruji/guidence@3x.png",
];
