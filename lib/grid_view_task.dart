import 'package:flutter/material.dart';
import 'package:flutter_sec_6/models/grid_view_model.dart';

class GridViewTask extends StatefulWidget {
  const GridViewTask({super.key});

  @override
  State<GridViewTask> createState() => _GridViewTaskState();
}

class _GridViewTaskState extends State<GridViewTask> {
  List<GridViewModel> gridviewList = [
    GridViewModel(icon: Icons.add_ic_call_outlined, title: 'All'),
    GridViewModel(icon: Icons.calendar_month, title: 'Calender'),
    GridViewModel(icon: Icons.person, title: 'Profile'),
    GridViewModel(icon: Icons.start, title: 'Start'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Demo"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
          mainAxisExtent: 60,
          ),
          itemCount: gridviewList.length,
          itemBuilder: (context , i){
            return Card(
              child: ListTile(
                leading: Icon(gridviewList[i].icon),
                title: Text(gridviewList[i].title.toString()),
                trailing: Icon(Icons.star),
              ),
            );
          }),
    );
  }
}
