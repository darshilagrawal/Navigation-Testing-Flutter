import 'package:flutter/material.dart';
import 'package:testing/pages/homePage.dart';
import 'package:testing/pages/profilePage.dart';
import 'package:testing/pages/settingPage.dart';

class PageOne extends StatefulWidget {
  PageOne({super.key});

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  int _selectedIndex = 0;

  final List _pages = [HomePage(), ProfilePage(), SettingPage()];

  void changeSelectedIndex(int indexVal) {
    setState(() {
      _selectedIndex = indexVal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.man), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          changeSelectedIndex(index);
        },
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.green,
    );
  }
}
