import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class WeightBalanceLines extends StatelessWidget {
  const WeightBalanceLines({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // first
                weightcard(
                  circlePosition: const Alignment(0.1, 0.5),
                  circleColor: Colors.white54,
                  dashColore: Colors.white10,
                ),

                // second
                weightcard(
                  circlePosition: const Alignment(0.1, 0.7),
                  circleColor: Colors.white54,
                  dashColore: Colors.white10,
                ),
                // third
                weightcard(
                  circlePosition: const Alignment(0.1, 0.45),
                  circleColor: Colors.white54,
                  dashColore: Colors.white10,
                ),
                // fouth
                weightcard(
                  circlePosition: const Alignment(0.1, 0.2),
                  circleColor: Colors.white54,
                  dashColore: Colors.white10,
                ),

                // fifth
                weightcard(
                  circlePosition: const Alignment(0.1, 0.45),
                  circleColor: Colors.white54,
                  dashColore: Colors.white10,
                ),
                // sixth
                weightcard(
                  circlePosition: const Alignment(0.1, 0.1),
                  circleColor: Colors.white54,
                  dashColore: Colors.white10,
                ),
                // seventh
                weightcard(
                  circlePosition: const Alignment(0.1, -0.7),
                  circleColor: Colors.white,
                  dashColore: Colors.white54,
                ),
                // eighth
                weightcard(
                  circlePosition: const Alignment(0.1, 0.1),
                  circleColor: Colors.white54,
                  dashColore: Colors.white10,
                ),
                // nineth
                weightcard(
                  circlePosition: const Alignment(0.1, 0.2),
                  circleColor: Colors.white54,
                  dashColore: Colors.white10,
                ),
                // tenth
                weightcard(
                  circlePosition: const Alignment(0.1, 0.1),
                  circleColor: Colors.white54,
                  dashColore: Colors.white10,
                ),
                // eleventh
                weightcard(
                  circlePosition: const Alignment(0.1, 0.2),
                  circleColor: Colors.white54,
                  dashColore: Colors.white10,
                ),
              ],
            ),
          ),
          // SizedBox(width: 30),
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.topRight,
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '73',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: 'Kg',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white54,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Stack weightcard({
    required Alignment circlePosition,
    required Color circleColor,
    required Color dashColore,
  }) {
    return Stack(
      alignment: circlePosition,
      children: [
        DottedLine(
          direction: Axis.vertical,
          lineLength: 100,
          dashColor: dashColore,
          lineThickness: 1.0,
          dashLength: 3.0,
        ),
        CircleAvatar(
          radius: 7,
          backgroundColor: circleColor,
        )
      ],
    );
  }
}
