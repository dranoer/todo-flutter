import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/models/task_data.dart';

class AddTaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 30.0, left: 50.0, right: 50.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: false,
              textAlign: TextAlign.center,
              onChanged: (newTask) {
                newTaskTitle = newTask;
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<TaskData>(context).addTask(newTaskTitle);
                Navigator.pop(context);
//                print(newTaskTitle);
//                addTaskCallback(newTaskTitle);
              },
            )
          ],
        ),
      ),
    );
  }
}
