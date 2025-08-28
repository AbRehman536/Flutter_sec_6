import 'package:flutter/material.dart';

class NestedRowColumn extends StatelessWidget {
  const NestedRowColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Nested Row Column"),
        actions: [
          Icon(Icons.notification_add),
          Icon(Icons.bookmark),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Text("Lorem Ipsum",style: TextStyle(fontSize: 30),),
          SizedBox(height: 15,),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Icon(Icons.add_ic_call_outlined),
            Column(children: [
              Icon(Icons.favorite),
              Icon(Icons.car_crash),
            ],),
            Column(children: [
              Icon(Icons.comment),
              Row(children: [
                Icon(Icons.notification_add),
                Icon(Icons.email_outlined),

              ],),
              Icon(Icons.person_pin_outlined),

            ],),
            Icon(Icons.calendar_month),
          ],)
        ],
      ),
    );
  }
}
