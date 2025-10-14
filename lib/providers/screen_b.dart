import 'package:flutter/material.dart';
import 'package:flutter_sec_6/providers/user.dart';
import 'package:provider/provider.dart';

class ScreenBProvider extends StatelessWidget {
  const ScreenBProvider({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen B"),
        backgroundColor: Colors.orange,
      ),
      body: Center(child:
        Column(children: [
          Text(userProvider.getName()),
          Text(userProvider.getEmail()),
        ],),),
    );
  }
}
