import 'package:flutter/material.dart';
import 'package:todo_app_ptoject/components/confirm_deletion.dart';
import 'package:todo_app_ptoject/screens/home_screen.dart';
import 'package:todo_app_ptoject/services/update_task.dart';

// ignore: must_be_immutable
class Task extends StatelessWidget {
  Task(
      {super.key, required this.id, required this.status, required this.title});
  int id;
  String title;
  bool status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: status == false ? Color(0xffDF2E38) : Color(0xff5D9C59),
          child: Theme(
            data: Theme.of(context).copyWith(
              unselectedWidgetColor: Colors.white,
            ),
            child: CheckboxListTile(
              checkColor: Colors.white,
              activeColor: Color(0xff5D9C59),
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              secondary: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: status == true ? Colors.red : Colors.white,
                ),
                onPressed: () {
                  confirmDialog(context, id);
                },
              ),
              value: status,
              onChanged: (value) async {
                updateTask(id, value!);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                    (route) => false);
              },
            ),
          ),
        ),
      ),
    );
  }
}
