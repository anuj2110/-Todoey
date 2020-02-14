import 'package:flutter/material.dart';
import 'package:todoey/models/tasks.dart';
import 'task_tile.dart';

class TaskList extends StatefulWidget {

  final List<Task> tasks;
  TaskList({this.tasks});
  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {

  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){

      return TaskTile(
        taskTile: widget.tasks[index].name,
        isChecked:widget.tasks[index].isDone,
        checkBoxCallBack:  (checkBoxValue){
    setState(() {
      widget.tasks[index].toggleDone();
    });
    
  }
);

    },itemCount: widget.tasks.length,);
  }
}
