import 'package:bmi_app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class CalculateScreen extends StatelessWidget {
  const CalculateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CrossAxisAlignment.start;
    return Scaffold(
      appBar: AppbarWidget(),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              "result",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),

            Flexible(
              child: Center(
                child: Container(
                  alignment: AlignmentGeometry.center,
                  color: Color(0xff24263B),
                  child: Column(children: [Text("Normal"), Text("data")]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
