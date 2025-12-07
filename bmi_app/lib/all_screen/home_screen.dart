import 'package:bmi_app/all_screen/calculate_screen.dart';
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
  bool slect = true;
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
                SizedBox(width: 20),
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
            SizedBox(width: 20),

            HeightWidget(),
            AgeWidget(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 100,
        height: 100,
        color: Color(0xffE83D67),
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CalculateScreen()),
            );
          },
          child: Text(
            "Calculate",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
