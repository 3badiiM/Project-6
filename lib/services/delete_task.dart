import 'package:supabase_flutter/supabase_flutter.dart';

Future deleteTask(int id) async {
  final supabase = Supabase.instance.client;
  await supabase.from('task').delete().eq('id', id);
}
