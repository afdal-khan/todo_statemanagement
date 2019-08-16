import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';


class Addtask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
          color: Colors.white,
        
        ),
       child: Column(
         
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: <Widget>[
         Text('Add Task',
         textAlign: TextAlign.center,
         style: TextStyle(color: Colors.lightBlue,
         fontSize: 30.0),),
         TextField(
           autofocus: true,
           textAlign: TextAlign.center,
         ),
         FlatButton(
          child: Text("ADD",
          style: TextStyle(color: Colors.white),),
          onPressed: (){},
          color: Colors.lightBlueAccent,
         ),
         
       ],),
      ),
    );
  }
}