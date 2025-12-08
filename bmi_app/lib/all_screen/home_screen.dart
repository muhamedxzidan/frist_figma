import 'package:bmi_app/all_screen/calculate_screen.dart';
import 'package:bmi_app/calculate_bmi.dart';
import 'package:bmi_app/widgets/age_widget.dart';
import 'package:bmi_app/widgets/appbar_widget.dart';
import 'package:bmi_app/widgets/gender_widget.dart';
import 'package:bmi_app/widgets/height_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int heightValue = 170;
  int weightValue = 70;
  int ageValue = 25;
  bool slect = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                // ... (Gender Widgets)
                GenderWidget(
                  named: "Male",
                  icons: Icons.male,
                  isActive: slect,
                  onTap: () {
                    setState(() {
                      slect = true;
                    });
                  },
                ),
                const SizedBox(width: 20),
                GenderWidget(
                  named: "Female",
                  icons: Icons.female,
                  isActive: !slect,
                  onTap: () {
                    setState(() {
                      slect = false;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),

            const SizedBox(height: 20),

            HeightWidget(
              onHeightChanged: (newHeight) {
                setState(() {
                  heightValue = newHeight;
                });
              },
            ),

            AgeWidget(
              onWeightChanged: (newWeight) {
                setState(() {
                  weightValue = newWeight;
                });
              },
              onAgeChanged: (newAge) {
                setState(() {
                  ageValue = newAge;
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 100,
        color: const Color(0xffE83D67),
        child: TextButton(
          onPressed: () {
            final double result = BmiCalculator.calculateBmi(
              weightValue.toDouble(),
              heightValue.toDouble(),
            );

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CalculateScreen(result.round()),
              ),
            );
          },
          child: const Text(
            "Calculate",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
