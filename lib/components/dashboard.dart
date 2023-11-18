import 'package:flutter/material.dart';

class DashBorad extends StatelessWidget {
  const DashBorad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
      child: Container(
        height: MediaQuery.sizeOf(context).height * 0.30,
        width: double.infinity,
        color: Color(0xffFFCB42),
      ),
    );
  }
}
