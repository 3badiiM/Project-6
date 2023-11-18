import 'package:flutter/material.dart';

AppBar CustomAppBar() {
  return AppBar(
    elevation: 0,
    backgroundColor: Color(0xffFFCB42),
    leadingWidth: 200,
    leading: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Icon(
            Icons.list_alt,
            size: 40,
            color: Color(0xff0C356A),
          ),
          Text(
            ' TODO',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );
}
