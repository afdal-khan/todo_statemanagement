import 'package:flutter/material.dart';
import 'package:todo/widgets/taskList.dart';
import 'package:todo/screens/Add_task.dart';


class Taskscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
       onPressed: (){
        showModalBottomSheet(context: context, builder: (BuildContext context)=>Addtask());
      },
      backgroundColor: Colors.lightBlueAccent,),

      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 30.0, top: 60.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                    CircleAvatar(child: Icon(Icons.list,
                    size: 30.0,
                    color: Colors.lightBlueAccent,),
                    backgroundColor: Colors.white,
                    radius: 30.0,),
                    SizedBox(height: 10.0),
                Text('Todoey',
                style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
                Text('12 task to do',
                style: TextStyle(color: Colors.white,fontSize: 18.0),),

              
              ],
            ),

          ),
            Expanded(
                          child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                ),
                child: new TaskList(),
              ),
            ),
        ],
      ),
    );
  }
}



