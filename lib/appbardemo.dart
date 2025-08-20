import 'package:flutter/material.dart';

class AppBarDemo extends StatelessWidget {
  const AppBarDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("App Bar"),
        actions: [
          Icon(Icons.notification_add),
          Icon(Icons.bookmark),
        ],
      ),
    );
  }
}
