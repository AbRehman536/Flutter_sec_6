import 'package:flutter/material.dart';
import 'package:flutter_sec_6/listtile_demo.dart';

class PopupMenuDemo extends StatelessWidget {
  const PopupMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pop Up Menu"),
        backgroundColor: Colors.blue,
       actions: [
         PopupMenuButton(
           itemBuilder: (BuildContext context) {
             return [
               PopupMenuItem(child: TextButton(onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> ListTileDemo()));
               }, child: Text("Preview"))),
               PopupMenuItem(child: Text("Share")),
               PopupMenuItem(child: Text("Get Link")),
               PopupMenuItem(child: Text("Logout")),
             ];
           },)
       ],
      ),
      body: Center(child: 
        Text("Tap on 3 dot menu to open popup menu"),),
    );
  }
}
