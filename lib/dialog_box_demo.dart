import 'package:flutter/material.dart';
import 'package:flutter_sec_6/listtile_demo.dart';

class DialogBoxDemo extends StatefulWidget {
  const DialogBoxDemo({super.key});

  @override
  State<DialogBoxDemo> createState() => _DialogBoxDemoState();
}

class _DialogBoxDemoState extends State<DialogBoxDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Dialog Box"),
        centerTitle: true,
      ),
      body: Column(children: [
        SizedBox(height: 20,),
        Text("LOGIN PAGE",style: TextStyle(fontSize: 30),),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
              label: Text("Email"),
              hintText: 'abdullah@gmail.com',
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.account_balance),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 5)
              )
          ),
        ),
        SizedBox(height: 20,),
        TextField(
          decoration: InputDecoration(
              label: Text("Password"),
              hintText: '1234567890',
              prefix: Icon(Icons.lock),
              suffix: Icon(Icons.visibility),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 5)
              )
          ),

        ),
        SizedBox(height: 20,),
        ElevatedButton(onPressed: (){
          showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Thank You"),
                content: Text("Login Successful"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("No")),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ListTileDemo()));
                  }, child: Text("Yes")),
                ],
              );
          });
        }, child: Text("Login")),
        SizedBox(height: 20,),
        Container(
            color: Colors.blue,
            child: Text("Don't have account ?")),
        SizedBox(height: 20,),
        Align(
          alignment: Alignment.bottomLeft,
            child: Text("Sign Up")),
        Align(
            alignment: Alignment.bottomRight,
            child: Icon(Icons.account_balance)),
      ],),
    );
  }
}
