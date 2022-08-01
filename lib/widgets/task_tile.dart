import 'dart:ffi';

import 'package:flutter/material.dart';

//get onChanged => null;

class TaskTile extends StatelessWidget {
  late final bool isChecked;
  late final String taskTitle;
  final ValueSetter checkboxCallBack;
  final VoidCallback longPressCallBack;
  TaskTile({
    required this.taskTitle,
    required this.isChecked,
    required this.checkboxCallBack,
    required this.longPressCallBack,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallBack,
      ),
    );
  }
}
// dynamic checkboxState) {
// setState(() {
// isChecked = checkboxState;
// });  },
