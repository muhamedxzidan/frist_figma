import 'package:bmi_app/widgets/cost_appbar.dart';
import 'package:bmi_app/widgets/gender_widget.dart';
import 'package:bmi_app/widgets/height_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CostAppbar(),
      body: Column(children: [GenderWidget(), HeightWidget()]),
    );
  }
}
