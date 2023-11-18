import 'package:flutter/material.dart';
import 'package:todo_app_ptoject/components/appbar.dart';
import 'package:todo_app_ptoject/components/check_box_holder.dart';
import 'package:todo_app_ptoject/components/scaffold_button.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      floatingActionButton: ScaffoldButton(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 8),
              CheckBoxHolder(),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}
