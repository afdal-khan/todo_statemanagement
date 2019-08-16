
import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
    bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text('Buy milk', style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough: null),),
    trailing: new Checkedtask(isChecked,(bool newValue){
      setState(() {
       isChecked = newValue; 
      });
    }),);
  }
}

class Checkedtask extends StatelessWidget {
  
  final bool checkboxState;
  final Function toggleCheckbox;

  Checkedtask(this.checkboxState, this.toggleCheckbox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(value: checkboxState,
     onChanged: toggleCheckbox,
     
    );
  }
}