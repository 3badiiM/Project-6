import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

supabaseConnection() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://oiqcztfpqmgzhunyzmsn.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9pcWN6dGZwcW1nemh1bnl6bXNuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDAzMTg1NzgsImV4cCI6MjAxNTg5NDU3OH0.wTpGXynOYILmEQdBdaF7eUi2b1O-J_sIhINiWPNLVSg',
  );
}
