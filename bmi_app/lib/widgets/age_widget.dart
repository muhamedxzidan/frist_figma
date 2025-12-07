import 'package:flutter/material.dart';

class AgeWidget extends StatefulWidget {
  const AgeWidget({super.key});

  @override
  State<AgeWidget> createState() => _AgeWidgetState();
}

class _AgeWidgetState extends State<AgeWidget> {
  int _weight = 150;
  int _age = 26;

  void _incrementWeight() => setState(() => _weight++);
  void _decrementWeight() =>
      setState(() => _weight = _weight > 0 ? _weight - 1 : 0);

  void _incrementAge() => setState(() => _age++);
  void _decrementAge() => setState(() => _age = _age > 0 ? _age - 1 : 0);

  Widget _buildCounter({
    required String label,
    required int value,
    required VoidCallback onIncrement,
    required VoidCallback onDecrement,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff24263B),
      ),
      child: Column(
        children: [
          Text(label, style: const TextStyle(fontSize: 20)),
          Text(
            "$value",
            style: const TextStyle(fontSize: 40, fontStyle: FontStyle.normal),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                tooltip: "Increase $label",
                onPressed: onIncrement,
                icon: const Icon(Icons.add_circle),
                hoverColor: Colors.green,
              ),
              IconButton(
                tooltip: "Decrease $label",
                onPressed: onDecrement,
                icon: const Icon(Icons.remove_circle),
                hoverColor: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _buildCounter(
            label: "Weight",
            value: _weight,
            onIncrement: _incrementWeight,
            onDecrement: _decrementWeight,
          ),
        ),

        const SizedBox(width: 9),
        Expanded(
          child: _buildCounter(
            label: "Age",
            value: _age,
            onIncrement: _incrementAge,
            onDecrement: _decrementAge,
          ),
        ),
      ],
    );
  }
}
