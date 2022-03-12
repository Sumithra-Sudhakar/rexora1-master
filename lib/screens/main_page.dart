import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';
import 'package:rexora1/screens/messages.dart';
import 'package:rexora1/screens/profile.dart';
import 'package:rexora1/utils/colors.dart' as colors;

import 'favorites.dart';
import 'mainhome.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  final screens =[


    MainHome(),
    Favorites(),
    Messages(),
    Profile(),
  ];
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(

        elevation: 10,
        showSelectedLabels: false,
        currentIndex: currentIndex,
        selectedItemColor: colors.background,
        onTap: (index)=>setState(() {
          currentIndex=index;
        }),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 24,
              ),
              label: "home",
              backgroundColor: colors.buttonColor),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 24,
              ),
              label: "favorites",
              backgroundColor: colors.buttonColor
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat,
                size: 24,
              ),
              label: "messages",
              backgroundColor: colors.buttonColor
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 24,
              ),
              label: "profile",
              backgroundColor: colors.buttonColor
          ),
        ],
      ),
      body:  screens[currentIndex]);
  }
}

