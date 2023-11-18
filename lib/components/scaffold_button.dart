import 'package:flutter/material.dart';
import 'package:todo_app_ptoject/components/show_custom_bottom_sheet.dart';

class ScaffoldButton extends StatelessWidget {
  const ScaffoldButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: FloatingActionButton(
        backgroundColor: Color(0xffFFCB42),
        child: Icon(
          Icons.add,
          size: 40,
        ),
        shape: Border.all(color: Colors.transparent),
        onPressed: () {
          showCustomBottomSheet(context);
        },
      ),
    );
  }
}
