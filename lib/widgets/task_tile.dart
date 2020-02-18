import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTile;
  final Function checkBoxCallBack;
  final int index;
  TaskTile({this.taskTile,this.isChecked,this.checkBoxCallBack,this.index});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTile,style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough:null
        ),
      ),
      trailing: Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: checkBoxCallBack,
      ),
      onLongPress: (){
        Provider.of<TaskData>(context,listen: false).removeTask(index);
        
      },
    );
  }
}



