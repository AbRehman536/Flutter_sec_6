import 'package:flutter/material.dart';

class TabbarDemo extends StatefulWidget {
  const TabbarDemo({super.key});

  @override
  State<TabbarDemo> createState() => _TabbarDemoState();
}

class _TabbarDemoState extends State<TabbarDemo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          centerTitle: true,
          backgroundColor: Colors.green,
          bottom: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
              indicatorColor: Colors.red,
              tabs: [
            Tab(icon: Icon(Icons.home), text: "Home",),
            Tab(icon: Icon(Icons.settings), text: "Settings",),
            Tab(icon: Icon(Icons.person), text: "Profile",),
          ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("Home"),),
          Center(child: Column(children: [
            Card(
              color: Colors.yellow,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
              ),
            )
          ],),),
          Center(child: Text("Profile"),),
        ])

      ),
    );
  }
}
