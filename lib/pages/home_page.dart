import 'package:coffee_app/components/bottom_nav_bar.dart';
import 'package:coffee_app/const.dart';
import 'package:coffee_app/pages/cart_page.dart';
import 'package:coffee_app/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

final List<Widget> _page = [
  ShopPage(),
  CartPage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index) ,
      ),
      body: _page[_selectedIndex],
   
   
    );
  }
}