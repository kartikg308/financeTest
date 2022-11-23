import 'package:financetest/screens/home.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  static const body = [Home(), Home(), Home(), Home(), Home()];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body[index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (n) {
          index = n;
          setState(() {});
        },
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/card.png',
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/plus.png',
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/money.png',
              height: 30,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/profile.png',
              height: 30,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
