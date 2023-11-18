import 'package:supabase_flutter/supabase_flutter.dart';

Future updateTask(int id, bool status) async {
  final supabase = Supabase.instance.client;
  await supabase.from('task').update({'status': status}).eq('id', id);
}
