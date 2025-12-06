import 'package:bmi_app/widgets/age_widget.dart';
import 'package:bmi_app/widgets/appbar_widget.dart';
import 'package:bmi_app/widgets/gender_widget.dart';
import 'package:bmi_app/widgets/height_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                GenderWidget(named: "Male", icons: Icons.male),
                SizedBox(width: 20),
                GenderWidget(named: "Female", icons: Icons.female),
              ],
            ),
            SizedBox(width: 20),

            HeightWidget(),
            AgeWidget(),
          ],
        ),
      ),
    );
  }
}
