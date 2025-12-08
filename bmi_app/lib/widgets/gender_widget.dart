import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final String named;
  final IconData icons;
  final void Function()? onTap;
  final bool isActive;

  const GenderWidget({
    super.key,
    required this.icons,
    required this.named,
    this.onTap,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            color: isActive
                ? Color.fromARGB(255, 5, 175, 14)
                : Color(0xff333244),
          ),
          child: Column(
            children: [
              Icon(icons, size: 96),
              Text(named, style: TextStyle(fontSize: 20)),
            ],
          ),
        ),
      ),
    );
  }
}
