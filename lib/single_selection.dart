import 'package:flutter/material.dart';

class SingleSelectionDemo extends StatefulWidget {
  const SingleSelectionDemo({super.key});

  @override
  State<SingleSelectionDemo> createState() => _SingleSelectionDemoState();
}

class _SingleSelectionDemoState extends State<SingleSelectionDemo> {
  int selectedIndex = -1 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Selection"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 8,
        itemBuilder: (context, i){
          final isSelected = selectedIndex == i;
          return Card(
            child: ListTile(
              onTap: (){
                setState(() {
                  selectedIndex = isSelected ? -1 : i ;
                });
              },
              tileColor: isSelected ? Colors.blue : Colors.red,
              textColor: isSelected ? Colors.white : Colors.black,
              iconColor: isSelected ? Colors.white : Colors.black,
              leading: Icon(isSelected ? Icons.notification_add : Icons.settings),
              title: Text("Selected Index, $selectedIndex"),
              subtitle: Text("Index, $i"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        }
      ),
    );
  }
}
