import 'package:flight_app_ui/card/card_view.dart';
import 'package:flight_app_ui/utils/const.dart';

import 'package:flight_app_ui/views/explore/explore.dart';
import 'package:flight_app_ui/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavbarScreen extends StatefulWidget {
  const NavbarScreen({super.key});

  @override
  State<NavbarScreen> createState() => _NavbarScreenState();
}

class _NavbarScreenState extends State<NavbarScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screen = <Widget>[
    HomeView(),
    ExploreView(),
    CardView(),
    Text('Settings Screen'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor:KPrimaryColor,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(icon:SvgPicture.asset('assets/icon/home.svg',height: 30,width: 30,), label: 'Home'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/book.svg',height: 30,width: 30),
            label: 'Explore',
          ),
         
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/card.svg',height: 30,width: 30),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icon/setting.svg',height: 30,width: 30),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
