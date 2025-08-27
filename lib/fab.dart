import 'package:flutter/material.dart';

class FABDemo extends StatelessWidget {
  const FABDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Floating Action Button"),
        actions: [
          Icon(Icons.notification_add),
          Icon(Icons.bookmark),
        ],
      ),
     floatingActionButton: FloatingActionButton.extended(
       backgroundColor: Colors.blue,
       icon: Icon(Icons.chat,color: Colors.white,),
         label: Text("Chat",style: TextStyle(color: Colors.white),),
         onPressed: (){}),
    );
  }
}
