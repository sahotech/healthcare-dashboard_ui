// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/utils/appcolors.dart';

class HeartRateCard extends StatelessWidget {
  HeartRateCard({super.key});
  double height = 80;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      hearrtRateBars(height * 0.8),
                      const SizedBox(width: 10),
                      hearrtRateBars(height * 0.4),
                      const SizedBox(width: 10),
                      hearrtRateBars(height * 0.5),
                      const SizedBox(width: 10),
                      hearrtRateBars(height * 0.7),
                      const SizedBox(width: 10),
                      hearrtRateBars(height * 0.9),
                      const SizedBox(width: 10),
                      hearrtRateBars(height * 0.55),
                      const SizedBox(width: 10),
                      hearrtRateBars(height * 0.6),
                      const SizedBox(width: 10),
                      hearrtRateBars(height * 0.4),
                      const SizedBox(width: 10),
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
                            text: '90',
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: 'bpm',
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
          // const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Reduce caffeine',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black38,
                ),
              ),
              SizedBox(
                // width: sw < 1450 ? 100 : 200,
                child: Text(
                  '60 - 100 beats per minute',
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  hearrtRateBars(double height) {
    return Container(
      height: height,
      width: 8,
      decoration: BoxDecoration(
        color: highlightbg,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
