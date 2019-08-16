import 'package:flutter/material.dart';
import 'package:todo/widgets/tasktile.dart';


class TaskList extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
       TaskTile(),
       TaskTile(),
       TaskTile(),
    ],);
  }
}