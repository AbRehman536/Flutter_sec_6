import 'package:flutter/material.dart';

class RowColumn extends StatelessWidget {
  const RowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("App Bar"),
        actions: [
          Icon(Icons.notification_add),
          Icon(Icons.bookmark),
        ],
      ),
      body: Container(
        height: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Name",style: TextStyle(fontSize: 20),),
            Text("Age",style: TextStyle(fontSize: 20),),
            Text("Class",style: TextStyle(fontSize: 20),),
            Text("City",style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
