import 'package:flutter/material.dart';


class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text("Bottom Sheet Demo"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/images/download.jpg", height: 400,),
          Text("Bottom Sheet Demo",style: TextStyle(fontSize: 30),),
          TextButton(onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(

                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Profile"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("Settings"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.chat),
                          title: Text("Chats"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.logout),
                          title: Text("Logout"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],);
                });
          }, child: Text("Show Bottom Sheet")),
          Icon(Icons.chat),
          IconButton(onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                 return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Card(

                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Profile"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.settings),
                          title: Text("Settings"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.chat),
                          title: Text("Chats"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Card(
                        child: ListTile(
                          leading: Icon(Icons.logout),
                          title: Text("Logout"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                    ],);
                });
          }, icon: Icon(Icons.chat_bubble)),
          ElevatedButton(onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Card(
        
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text("Profile"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.settings),
                        title: Text("Settings"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.chat),
                        title: Text("Chats"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.logout),
                        title: Text("Logout"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],);
                });
          }, child: Text("Show Bottom Sheet"))
        ],),
      ),
    );
  }
}
