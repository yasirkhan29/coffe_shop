import 'package:coffe_shop/Pages/card_screen.dart';
import 'package:coffe_shop/Pages/const.dart';
import 'package:coffe_shop/Pages/shop_screen.dart';
import 'package:coffe_shop/comonets.dart/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  // navigate bottom bar
  int _selectedIndex = 0;
  void navgateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [ShopPage(), CartPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navgateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
