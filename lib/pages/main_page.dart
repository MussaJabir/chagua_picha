import 'dart:ffi';

import 'package:chagua_picha/pages/accounts_page.dart';
import 'package:chagua_picha/pages/explore_page.dart';
import 'package:chagua_picha/pages/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List <Widget> _pages = [];
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      const HomePage(),
      const ExplorePage(),
      const AccountsPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          fixedColor: Colors.black,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentIndex,
          iconSize: 32,
          onTap: (index){
          setState(() {
            _currentIndex = index;
          });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: 'Explore'),
            BottomNavigationBarItem(icon: Icon(Icons.account_box_outlined), label: 'Accounts')
          ]
      ),
    );
  }
}
