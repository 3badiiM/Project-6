import 'package:flutter/material.dart';
import 'package:todo_app_ptoject/screens/home_screen.dart';
import 'package:todo_app_ptoject/services/delete_task.dart';

Future<dynamic> confirmDialog(BuildContext context, int id) {
  return showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        titlePadding: EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
        ),
        title: Text('Are you sure to delete this task?'),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(fontSize: 20, color: Colors.black87),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    deleteTask(id);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                        (route) => false);
                  },
                  child: Text(
                    'Delete',
                    style: TextStyle(fontSize: 20, color: Colors.red),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    },
  );
}
