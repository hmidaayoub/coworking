import 'package:flutter/material.dart';

class BoxNumberIndicator extends StatefulWidget {
  final double width;
  final double height;
  final int number;

  const BoxNumberIndicator({
    Key? key,
    required this.width,
    required this.height,
    required this.number,
  }) : super(key: key);

  @override
  _BoxNumberIndicatorState createState() => _BoxNumberIndicatorState();
}

class _BoxNumberIndicatorState extends State<BoxNumberIndicator> {
  bool isRed = false; // Initial color state

  void toggleColor() {
    setState(() {
      isRed = !isRed; // Toggle between red and green
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleColor, // Change color on tap
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          color: isRed ? Colors.red : Colors.green, // Switch color
          borderRadius: BorderRadius.circular(0),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(2, 2),
            ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          '${widget.number}',
          style: TextStyle(
            fontSize: widget.width * 0.3,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
