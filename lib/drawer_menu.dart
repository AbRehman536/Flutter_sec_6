import 'package:flutter/material.dart';
import 'package:flutter_sec_6/listtile_demo.dart';

class DrawerMenuDemo extends StatelessWidget {
  const DrawerMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Menu"),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.blue,
              height: 200,
              width: 100,
              child: DrawerHeader(
                  child: Text("My App")),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ListTileDemo()));
              },
              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_right),
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
              },
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
