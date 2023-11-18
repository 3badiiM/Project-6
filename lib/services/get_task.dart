import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:todo_app_ptoject/models/task_model.dart';

Future<List<TaskModel>> getTasks() async {
  final supabase = Supabase.instance.client;
  final data =
      await supabase.from('task').select('*').order('status', ascending: true);
  List<TaskModel> task = [];
  for (var element in data) {
    task.add(TaskModel.fromJson(element));
  }
  return task;
}
