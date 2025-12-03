import 'package:flutter/material.dart';

class CostAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CostAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Color(0xff24263B),
      title: Text(
        "BMI Calculator",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(64);
}
