import 'package:flutter/material.dart';
import 'package:helloworld/screen/category.dart';
import 'package:helloworld/screen/clubs.dart';
import 'package:helloworld/screen/home.dart';
import 'package:helloworld/screen/user.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List _pages = [
    const HomeScreen(),
    const CategoriesScreen(),
    const ClubsScreen(),
    const UserScreen()
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[0],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.home),
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyLight.home),
          ),
        ],
      ),
    );
  }
}
