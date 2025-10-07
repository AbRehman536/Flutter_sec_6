import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeSelection extends StatefulWidget {
  const DateTimeSelection({super.key});

  @override
  State<DateTimeSelection> createState() => _DateTimeSelectionState();
}

class _DateTimeSelectionState extends State<DateTimeSelection> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Picker"),
        backgroundColor: Colors.purple,
      ),
      body: Column(children: [
        Text(
          DateFormat.yMMMMEEEEd().format(selectedDate),
          style: TextStyle(fontSize: 30),
        ),
        ElevatedButton(onPressed: (){
          showDatePicker(
              context: context,
              firstDate: DateTime(1970),
              lastDate: DateTime.now()).then((val){
                setState(() {
                  selectedDate = val!;
                });

          });
        }, child: Text("Show Date Picker")),
        Text(
          selectedTime.format(context).toString(),
          style: TextStyle(fontSize: 30),
        ),
        ElevatedButton(onPressed: (){
          showTimePicker(
              context: context,
              initialTime: TimeOfDay.now()).then((val){
                setState(() {
                  selectedTime = val!;
                });
          });
        }, child: Text("Show Time Picker"))
      ],),
    );
  }
}
