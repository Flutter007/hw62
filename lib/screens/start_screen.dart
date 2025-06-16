import 'package:flutter/material.dart';
import 'package:hw62/screens/photos_screen.dart';

import 'add_photo_screen.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int selectedIndex = 0;
  final pageController = PageController();
  final _screens = [PhotosScreen(), AddPhotoScreen()];

  void onPageTap(int index) {
    setState(() {
      selectedIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 250),
      curve: Curves.bounceInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(controller: pageController, children: _screens),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onPageTap,
        items: [
          BottomNavigationBarItem(
            label: 'Фото',
            icon: Icon(Icons.photo_outlined),
            activeIcon: Icon(Icons.photo_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Добавить',
            icon: Icon(Icons.add_a_photo_outlined),
            activeIcon: Icon(Icons.add_a_photo),
          ),
        ],
      ),
    );
  }
}
