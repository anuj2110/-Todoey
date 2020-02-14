import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskTile;
  final Function checkBoxCallBack;
  TaskTile({this.taskTile,this.isChecked,this.checkBoxCallBack});

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
    );
  }
}



