import 'package:flutter/material.dart';
import 'package:todo/widgets/tasktile.dart';
import 'package:todo/models/task.dart';


class TaskList extends StatefulWidget {
 

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  List<Task> task = [
    Task(name: "buy milk"),
    Task(name: "buy eggs"),
    Task(name: "buy bread"),
    

  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
         return TaskTile(taskTitle: task[index].name, isChecked: task[index].isdone,
         checkboxCallback: (newValue){
           setState(() {
            task[index].toggleDone(); 
           });
         },);
    },
    itemCount: task.length,);
  }
}