import 'package:flutter/material.dart';
import 'package:flutter_sec_6/providers/screen_b.dart';
import 'package:flutter_sec_6/providers/user.dart';
import 'package:provider/provider.dart';

class ScreenAProvider extends StatelessWidget {
  const ScreenAProvider({super.key});

  @override
  Widget build(BuildContext context) {
    var userProvider =Provider.of<UserProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen A"),
        backgroundColor: Colors.yellow,
      ),
      body: Center(child: ElevatedButton(
          onPressed: (){
            userProvider.setName("Abdullah");
            userProvider.setEmail("abdullah@gmail.com");
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenBProvider()));
          }, child: Text("Show Screen B")),),
    );
  }
}
