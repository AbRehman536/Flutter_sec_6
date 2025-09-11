import 'package:flutter/material.dart';

class MultipleSelectionDemo extends StatefulWidget {
  const MultipleSelectionDemo({super.key});

  @override
  State<MultipleSelectionDemo> createState() => _MultipleSelectionDemoState();
}

class _MultipleSelectionDemoState extends State<MultipleSelectionDemo> {
  List<int> selectedIndex = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Multi Selection"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 7,
        itemBuilder: (BuildContext context, int i) {
          return ListTile(
            onTap: (){
              if(selectedIndex.contains(i)){
                selectedIndex.remove(i);
              }
              else{
                selectedIndex.add(i);
              }
              setState(() {});
            },
            tileColor: selectedIndex.contains(i) ? Colors.blue : Colors.yellow,
            textColor: selectedIndex.contains(i) ? Colors.white : Colors.black,
            iconColor: selectedIndex.contains(i) ? Colors.white : Colors.black,
            leading: Icon(selectedIndex.contains(i) ? Icons.person : Icons.account_balance),
            title: Text("Selected Index,$selectedIndex"),
            subtitle: Text("Index, $i"),
            trailing: Icon(selectedIndex.contains(i) ? Icons.arrow_downward : Icons.arrow_forward),
          );
        },
      ),
    );
  }
}
