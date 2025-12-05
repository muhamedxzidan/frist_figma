import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  const GenderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 0, height: 20),
        //row gender
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(21),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xff24263B),
              ),
              //alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Icon(Icons.male, size: 96),
                  Text("Male", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            SizedBox(width: 14, height: 14),

            Container(
              padding: EdgeInsets.all(21),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Color(0xff24263B),
              ),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Icon(Icons.female, size: 96),
                  Text("Female", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
          ],
        ),

        SizedBox(height: 20),

        //row age
        Row(),
      ],
    );
  }
}
