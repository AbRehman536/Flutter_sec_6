import 'package:flutter/material.dart';

class StackDemo extends StatelessWidget {
  const StackDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Stack(children: [
        Image.asset("assets/images/download.jpg", height: 400,),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
            style: TextStyle(color: Colors.red),),
        ),
        Icon(Icons.back_hand)
      ],),
    );
  }
}
