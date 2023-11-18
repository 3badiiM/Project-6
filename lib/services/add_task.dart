import 'package:supabase_flutter/supabase_flutter.dart';

Future addTask(String title) async {
  final supabase = Supabase.instance.client;
  await supabase.from('task').insert({'title': title});
}
