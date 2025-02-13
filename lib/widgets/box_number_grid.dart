import 'package:flutter/material.dart';
import 'package:cowork/widgets/circular_number_indicator.dart'; // Import your existing component

class BoxNumberGrid extends StatelessWidget {
  final double width;  // Width of the grid
  final double height; // Height of the grid
  final double boxSize; // Size of each BoxNumberIndicator
  final List<int> numbers; // List of numbers for the indicators

  const BoxNumberGrid({
    Key? key,
    required this.width,
    required this.height,
    required this.boxSize,
    required this.numbers, // Require numbers in constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, // Border color
            width: 1, // Border width
          ),
          borderRadius: BorderRadius.circular(0), // Optional: rounded corners for the border
        ),
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(), // Prevent scrolling inside grid
          crossAxisCount: 2, // 2x2 Grid
          crossAxisSpacing: 0,
          mainAxisSpacing: 0,
          children: numbers.map((num) => BoxNumberIndicator(width: boxSize, height: boxSize, number: num)).toList(),
        ),
      ),
    );
  }
}
