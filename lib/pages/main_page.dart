import 'dart:developer';

import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sipmle_teachers/pages/main_pages/home_page.dart';
import 'package:sipmle_teachers/pages/todo_page.dart';
import 'package:sipmle_teachers/pages/translate_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pageController = PageController(initialPage: 1);
  final _controller = NotchBottomBarController(index: 1);

  int maxCount = 3;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  final List<Widget> bottomBarPages = [
    const TranslatePage(),
    const HomePage(),
    const ToDoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: List.generate(
            bottomBarPages.length, (index) => bottomBarPages[index]),
      ),
      extendBody: true,
      bottomNavigationBar: (bottomBarPages.length <= maxCount)
          ? AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        color: Colors.white,
        showLabel: false,
        notchColor: Colors.blueGrey,
        removeMargins: false,
        bottomBarWidth: 500,
        durationInMilliSeconds: 300,
        bottomBarItems: const [
          BottomBarItem(
            inActiveItem: Icon(
              Icons.translate,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.translate,
              color: Color(0xe81554c7),
            ),
            itemLabel: 'Page 4',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.home_filled,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.home_filled,
              color: Color(0xe81554c7),
            ),
            itemLabel: 'Page 1',
          ),
          BottomBarItem(
            inActiveItem: Icon(
              Icons.sticky_note_2_rounded,
              color: Colors.blueGrey,
            ),
            activeItem: Icon(
              Icons.sticky_note_2_rounded,
              color: Color(0xe81554c7),
            ),
            itemLabel: 'Page 5',
          ),
        ],
        onTap: (index) {
          log('current selected index $index');
          _pageController.jumpToPage(index);
        },
      )
          : null,
    );
  }
}