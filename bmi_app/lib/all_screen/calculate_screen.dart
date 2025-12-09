import 'package:bmi_app/calculate_bmi.dart';
import 'package:bmi_app/widgets/appbar_widget.dart';
import 'package:flutter/material.dart';

class CalculateScreen extends StatelessWidget {
  final int theResult;
  final double height;

  const CalculateScreen(this.theResult, this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Result ",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
          ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: BmiCalculator.getColor(theResult.toDouble()),
              ),

              child: Column(
                spacing: 25,
                children: [
                  Text(
                    BmiCalculator.getResult(theResult.toDouble()),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: BmiCalculator.getTextColor(theResult.toDouble()),
                    ),
                  ),
                  Text(
                    theResult.toString(),
                    style: TextStyle(
                      fontSize: 65,
                      fontWeight: FontWeight.bold,
                      color: BmiCalculator.getTextColor(theResult.toDouble()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      BmiCalculator.getInterpretation(theResult.toDouble()),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: BmiCalculator.getTextColor(theResult.toDouble()),
                      ),
                    ),
                  ),
                  Divider(
                    color: BmiCalculator.getTextColor(theResult.toDouble()),
                  ),
                  Text(
                    "Ideal Weight Range:",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: BmiCalculator.getTextColor(theResult.toDouble()),
                    ),
                  ),
                  Text(
                    BmiCalculator.getIdealWeightRange(height),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: BmiCalculator.getTextColor(theResult.toDouble()),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      BmiCalculator.getHealthTip(theResult.toDouble()),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: BmiCalculator.getTextColor(theResult.toDouble()),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
