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
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _selectedPage,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.user3),
            label: "Clubs",
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.profile),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
