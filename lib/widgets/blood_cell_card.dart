// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/utils/appcolors.dart';

class BloodCellCard extends StatelessWidget {
  BloodCellCard({super.key});
  double height = 80;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: availablebg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Heart rate',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: height,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      bloodcellbar(height * 0.5),
                      bloodcellbar(height),
                      bloodcellbar(height * 0.5),
                      bloodcellbar(height * 0.8),
                      bloodcellbar(height / 1.7),
                      bloodcellbar(height * 0.9),
                      bloodcellbar(height * 0.5),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: '1100',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'uL',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black26,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Need more sleep',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black38,
                ),
              ),
              Text(
                '4k - 11k cells in normal',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  bloodcellbar(double height) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              width: 6,
              height: height,
              color: Colors.red,
            ),
            const CircleAvatar(
              radius: 5,
              backgroundColor: Colors.red,
            ),
          ],
        ),
        const CircleAvatar(
          radius: 5,
          backgroundColor: Colors.red,
        ),
      ],
    );
  }
}
