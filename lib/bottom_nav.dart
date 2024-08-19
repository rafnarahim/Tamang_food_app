import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  List<Widget> body = [
    Icon(Icons.restaurant_sharp),
    Icon(Icons.search),
    Icon(Icons.receipt),
    Icon(Icons.person)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.white,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (newIndex) {
              setState(() {
                _currentIndex = newIndex;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_sharp),
                label: "",
              ),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.receipt), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
            ]));
  }
}
