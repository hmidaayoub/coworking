import 'package:flutter/material.dart';
import 'package:cowork/widgets/box_number_grid.dart';  // Import BoxNumberGrid
import 'package:cowork/widgets/box_number_grid2.dart'; // Import BoxNumberGrid2
import 'package:cowork/widgets/circular_number_indicator.dart'; // Import BoxNumberIndicator

class PlanScreen extends StatelessWidget {
  const PlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Plan Screen'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Row containing the 3 BoxNumberIndicators at the top
          Padding(
            padding: const EdgeInsets.all(8.0), // Adds space around the row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start, // Aligns the boxes to the left
              children: [
                BoxNumberIndicator(width: 75, height: 75, number: 3),
                SizedBox(width: 10), // Adds space between the boxes
                BoxNumberIndicator(width: 75, height: 75, number: 2),
                SizedBox(width: 10),
                BoxNumberIndicator(width: 75, height: 75, number: 1),
              ],
            ),
          ),

          // Row containing the Container on the left and BoxNumberGrid2 on the right
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              children: [
                // Container on the left
                Container(
                  width: 250,  // You can adjust this width
                  height: 500, // You can adjust this height
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.count(
                    crossAxisCount: 2, // 2 columns
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      BoxNumberGrid(width: 100, height: 100, boxSize: 50, numbers: [4,5,8,9],),
                      BoxNumberGrid(width: 100, height: 100, boxSize: 50, numbers: [6,7,10,11],),
                      BoxNumberGrid(width: 100, height: 100, boxSize: 50, numbers: [12,13,16,17],),
                      BoxNumberGrid(width: 100, height: 100, boxSize: 50, numbers: [14,15,18,19],),
                      BoxNumberGrid(width: 100, height: 100, boxSize: 50, numbers: [20,21,24,25],),
                      BoxNumberGrid(width: 100, height: 100, boxSize: 50, numbers: [22,23,26,27],),
                    ],
                  ),
                ),

                // Space between the two sections
                SizedBox(width: 10),

                // BoxNumberGrid2 on the right
                Column(
                  children: [
                    BoxNumberGrid2(width: 100, height: 110, boxSize: 50, numbers: [28,29],),
                    SizedBox(height: 20), // Adds space between the two BoxNumberGrid2 components
                    BoxNumberGrid2(width: 100, height: 110, boxSize: 50, numbers: [30,31],),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
