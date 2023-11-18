import 'package:flutter/material.dart';
import 'package:todo_app_ptoject/components/task.dart';
import 'package:todo_app_ptoject/services/get_task.dart';

// ignore: must_be_immutable
class CheckBoxHolder extends StatelessWidget {
  CheckBoxHolder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            // height: MediaQuery.sizeOf(context).height,
            color: Color(0xffAEE1FC),
            child: FutureBuilder(
              future: getTasks(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.sizeOf(context).height * 0.1),
                      child: CircularProgressIndicator(),
                    ),
                  );
                } else {
                  if (snapshot.data!.length < 1) {
                    return Container(
                      color: Color(0xffAEE1FC),
                      height: MediaQuery.sizeOf(context).height * 0.3,
                      child: Center(
                        child: Text(
                          'You have no tasks yet!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  } else {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, i) {
                        return Task(
                          id: snapshot.data![i].id!,
                          title: snapshot.data![i].title.toString().trim(),
                          status: snapshot.data![i].status!,
                        );
                      },
                    );
                  }
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
