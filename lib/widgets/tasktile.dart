
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

   final bool isChecked ;
   final String taskTitle;
   Function checkboxCallback;

   TaskTile({this.isChecked,this.taskTitle,this.checkboxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(taskTitle, style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough: null),
    ),
    trailing: Checkbox(value: isChecked,
     onChanged: checkboxCallback,
     
    ),
    );
  }
}
// (bool newValue){
//       setState(() {
//        isChecked = newValue; 
//       });
//     })

// class Checkedtask extends StatelessWidget {
  
//   final bool checkboxState;
//   final Function toggleCheckbox;

//   Checkedtask(this.checkboxState, this.toggleCheckbox);

//   @override
//   Widget build(BuildContext context) {
//     return 
//   }
// }