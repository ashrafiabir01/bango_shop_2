import 'package:flutter/material.dart';
import 'package:bango_shop/custom_widgets/custom_appbar.dart';
import 'package:bango_shop/custom_widgets/custom_drawer.dart';
import 'package:bango_shop/files_dart/homepage/homepage.dart';
import 'package:bango_shop/files_dart/profile/profiles.dart';

import 'files_dart/homepage/Cart_Nav.dart';

class main_controlpanel extends StatefulWidget {
  const main_controlpanel({Key? key}) : super(key: key);

  @override
  _main_controlpanelState createState() => _main_controlpanelState();
}

class _main_controlpanelState extends State<main_controlpanel> {
  int _index_position = 0;
  final tabs = [homepage_app(), homepage_app(), Cart_Nav(), profile()];
  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: custom_drawer(),
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          selectedFontSize: hei / 50,
          iconSize: hei / 22,
          unselectedFontSize: hei / 50,
          currentIndex: _index_position,
          backgroundColor: Color(0xFF3BB73E),
          onTap: (int index) {
            setState(() {
              _index_position = index;
            });
          },
          selectedLabelStyle: TextStyle(color: Colors.white),
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: TextStyle(color: Colors.white),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications, color: Colors.white),
                label: "Notification"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                label: "Cart"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: Colors.white),
                label: "Profile"),
          ]),
      body: tabs[_index_position],
    );
  }
}
