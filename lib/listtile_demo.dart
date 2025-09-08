import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("List Tile Demo"),
      ),
      body: Card(
        color: Colors.red,
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, i){
            return Card(
              color: Colors.yellow,
              child: ListTile(
                leading: Icon(Icons.notification_add),
                title: Text("Notification"),
                subtitle: Text("You have new message"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            );
          }
        ),
      ),
    );
  }
}
