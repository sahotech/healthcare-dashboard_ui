import 'package:flutter/material.dart';

import '../utils/appcolors.dart';
import 'weight_balance_lines.dart';

class WeightCard extends StatelessWidget {
  const WeightCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardColor,
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Weight balance',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white60,
              ),
            ),
            SizedBox(height: 30),
            WeightBalanceLines(),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '60 kg - 78 kg ideal weight',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white24,
                  ),
                ),
                Text(
                  '178 cm height ',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white60,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
