import 'package:flutter/material.dart';

class HeightWidget extends StatefulWidget {
  const HeightWidget({super.key});

  @override
  State<HeightWidget> createState() => _HeightWidgetState();
}

class _HeightWidgetState extends State<HeightWidget> {
  int height = 170;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),

            color: Color(0xff333244),
          ),
          child: Column(
            children: [
              Text(
                "Height",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "$height",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: "cm"),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Slider(
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                    activeColor: Color(0xffE83D67),
                    divisions: 100,
                    label: "شـد ياوحـش",
                    min: 50,
                    max: 220,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
