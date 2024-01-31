// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_ogreniyorum/home_page.dart';
import 'package:flutter_ogreniyorum/profile_page.dart';
import 'package:flutter_ogreniyorum/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  //secilen indexe gore gorunum vermek
  int _selectedIndex = 1;

  //secilen indexi guncelle
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//appteki gorunum sayfalarimiz
  final List _pages = [
//profilepage
    ProfilePage(),
    //homepage
    HomePage(),
//settingspage
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("1st page")),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          //profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          //home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          //settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
