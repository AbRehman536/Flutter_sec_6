import 'package:flutter/material.dart';

class PopupMenuDemo extends StatelessWidget {
  const PopupMenuDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pop Up Menu"),
        backgroundColor: Colors.blue,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: PopupMenuButton(
              onSelected: (value){
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Selected item $value")));
              },
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(
                      value: "Preview",
                      child: Text("Preview")),
                  PopupMenuItem(
                      value : "Share",
                      child: Text("Share")),
                  PopupMenuItem(
                      value: "Get Link",
                      child: Text("Get Link")),
                  PopupMenuItem(
                      value: "Remove",
                      child: Text("Remove")),
                ];
              },),
          )
        ],
      ),
      body: Center(child: 
        Text("Tap on 3 dot menu to open popup menu"),),
    );
  }
}
