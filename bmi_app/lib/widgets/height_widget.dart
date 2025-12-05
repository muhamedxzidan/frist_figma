import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  const HeightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(21),
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
                  text: "150",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: "cm"),
              ],
            ),
          ),
          Slider(value: .5, onChanged: (va) {}, activeColor: Color(0xffE83D67)),
        ],
      ),
    );
  }
}
