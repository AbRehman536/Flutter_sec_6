import 'package:flutter/material.dart';
import 'package:flutter_sec_6/asset_image.dart';
import 'package:flutter_sec_6/gridview_demo.dart';
import 'package:flutter_sec_6/listtile_demo.dart';

class BottomBarDemo extends StatefulWidget {
  const BottomBarDemo({super.key});

  @override
  State<BottomBarDemo> createState() => _BottomBarDemoState();
}

class _BottomBarDemoState extends State<BottomBarDemo> {
  int selectedIndex = 0;
  List<Widget> screenList = [AssetImageDemo(), ListTileDemo(),GridViewDemo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screenList.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.red,
          showUnselectedLabels: false,
          onTap: (i){
            setState(() {
              selectedIndex = i;
            });
          },
          currentIndex: selectedIndex,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
      ]),
    );
  }
}
