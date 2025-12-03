import 'package:bmi_app/widgets/cost_appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CostAppbar(),
      body: Column(
        children: [
          //row gender
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: Color(0xff24263B),
                ),
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                    Icon(Icons.male, size: 96),
                    Text("Male", style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ],
          ),

          //contenr heghit
          Container(),

          //row age
          Row(),
        ],
      ),
    );
  }
}
