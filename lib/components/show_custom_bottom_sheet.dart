import 'package:flutter/material.dart';
import 'package:todo_app_ptoject/screens/home_screen.dart';
import 'package:todo_app_ptoject/services/add_task.dart';

Future<dynamic> showCustomBottomSheet(BuildContext context) {
  TextEditingController titleController = TextEditingController();

  final key = GlobalKey<FormState>();
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        width: double.infinity,
        height: MediaQuery.sizeOf(context).height * 0.7,
        color: Color(0xffFFCB42),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 24,
            right: 24,
          ),
          child: Form(
            key: key,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                    autofocus: true,
                    controller: titleController,
                    validator: (value) {
                      if (titleController.text.trim().isEmpty)
                        return 'You should add a title!';
                      else
                        return null;
                    },
                    decoration: InputDecoration(border: OutlineInputBorder())),
                ElevatedButton(
                  child: Text(
                    'ADD',
                    style: TextStyle(fontSize: 24),
                  ),
                  onPressed: () async {
                    if (key.currentState!.validate()) {
                      addTask(titleController.text);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                          (route) => false);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
