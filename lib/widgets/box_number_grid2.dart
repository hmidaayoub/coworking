import 'package:flutter/material.dart';
import 'package:cowork/widgets/circular_number_indicator.dart'; // Import your existing component

class BoxNumberGrid2 extends StatelessWidget {
  final double width;  // Width of the grid
  final double height; // Height of the grid
  final double boxSize; // Size of each BoxNumberIndicator
  final List<int> numbers; // List of numbers for the indicators

  const BoxNumberGrid2({
    Key? key,
    required this.width,
    required this.height,
    required this.boxSize,
    required this.numbers, // List of numbers as input
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: numbers.map((num) =>
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2), // Space between items
              child: BoxNumberIndicator(width: boxSize, height: boxSize, number: num),
            )
        ).toList(),
      ),
    );
  }
}
