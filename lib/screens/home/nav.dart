import 'package:provider/screens/home/add_activity.dart';
import 'package:flutter/material.dart';
import 'package:provider/screens/home/notifications.dart';
import 'package:provider/screens/home/messages.dart';
import 'package:provider/screens/home/profile.dart';

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  _navState createState() => _navState();
}

class _navState extends State<nav> {

  int _currentIndex = 0;

  final screens = [
    AddActivity(),
    Notifications(),
    Messsges(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff222B44), //Colors.white, const Color(0xff0A0E19),


      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff222B44),
        iconSize: 25,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xffF0D5A3),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box_rounded),
            label: 'Add',
            backgroundColor: const Color(0xff222B44),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
            backgroundColor: const Color(0xff222B44),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Messages',
            backgroundColor: const Color(0xff222B44),

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: const Color(0xff222B44),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          }
          );
        },
      ),
    );
  }
}

