import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:shoppingapp/screens/cart_screen.dart';

import 'home_screen.dart';

class Screens extends StatefulWidget {
  const Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {
  int _selectIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    Container(),
    Container(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectIndex),
      bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20)
          ]),
          child: SafeArea(
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(microseconds: 400),
              tabBackgroundColor: Colors.redAccent,
              tabs: [
                GButton(
                  icon: LineIcons.home,
                  text: "Home",
                ),
                GButton(
                  icon: LineIcons.shoppingBag,
                  text: "cart",
                ),
                GButton(
                  icon: LineIcons.heart,
                  text: "wishList",
                ),
                GButton(
                  icon: LineIcons.user,
                  text: "account",
                ),
              ],
              selectedIndex: _selectIndex,
              onTabChange: (index) {
                setState(() {
                  _selectIndex = index;
                });
              },
            ),
          )),
    );
  }
}
