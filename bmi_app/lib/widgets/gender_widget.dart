import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final String named;
  final IconData icons;
  const GenderWidget({super.key, required this.icons, required this.named});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child:
          //row gender
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xff24263B),
            ),
            child: Column(
              children: [
                Icon(icons, size: 96),
                Text(named, style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
    );
  }
}
