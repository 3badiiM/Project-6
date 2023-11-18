import 'package:flutter/material.dart';
import 'package:todo_app_ptoject/screens/home_screen.dart';
import 'package:todo_app_ptoject/services/supabase_connections.dart';

void main() {
  supabaseConnection();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff277BC0),
      ),
      home: Home(),
    );
  }
}
