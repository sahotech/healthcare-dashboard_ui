import 'package:flutter/material.dart';

import '../utils/appcolors.dart';
import '../utils/utils.dart';

class BloodTrackingCard extends StatelessWidget {
  BloodTrackingCard({
    super.key,
  });

  final Color border1 = availablebg;
  final Color border2 = Colors.blue.shade200;
  final Color border3 = Colors.blue;
  final Color border4 = availablebg;
  //

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Blood tracking'),
              Row(
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white38,
                    ),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 16,
                    color: Colors.white38,
                  )
                ],
              ),
            ],
          ),
          myspace(y: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                colGroup(18, 18, 15, 20, border1, border2, border3, border4,
                    '06.00 AM'),
                colGroup(20, 18, 15, 20, border1, border2, border3, border4,
                    '07.00 AM'),
                colGroup(20, 18, 15, 20, border1, border2, border3, border4,
                    '08.00 AM'),
                colGroup(20, 18, 15, 18, border1, border2, border3, border4,
                    '09.00 AM'),
                colGroup(18, 18, 15, 18, border1, border2, border3, border4,
                    '15.00 AM'),
                colGroup(18, 18, 15, 18, border1, border2, border3, border4,
                    '11.00 AM'),
                colGroup(18, 18, 15, 18, border1, border2, border3, border4,
                    '12.00 PM'),
                colGroup(18, 18, 15, 18, border1, border2, border3, border4,
                    '01.00 PM'),
                colGroup(18, 18, 15, 18, border1, border2, border3, border4,
                    '02.00 PM'),
                colGroup(18, 18, 15, 18, border1, border2, border3, border4,
                    '03.00 PM'),
              ],
            ),
          ),
          myspace(y: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: border1,
                  ),
                  myspace(x: 5),
                  Text(
                    'Cholesterol Level',
                    style: TextStyle(
                      color: border1,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              myspace(x: 10),
              Row(
                children: [
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: border2,
                  ),
                  myspace(x: 5),
                  const Text(
                    'Iron Level',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              myspace(x: 10),
              Row(
                children: [
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: border3,
                  ),
                  myspace(x: 5),
                  const Text(
                    'Sugar Level',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              myspace(x: 10),
              Row(
                children: [
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: border1,
                  ),
                  myspace(x: 5),
                  const Text(
                    'Heart Level',
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  //

  //
  Column colGroup(
    double fSize,
    double sSize,
    double tSize,
    double lSize,
    Color border1,
    Color border2,
    Color border3,
    Color border4,
    String text,
  ) {
    return Column(
      children: [
        myCircle(
          borderColor: border1,
          circleW: fSize,
          circleH: fSize,
        ),
        myspace(y: 20),
        myCircle(
          borderColor: border2,
          circleW: sSize,
          circleH: sSize,
        ),
        myspace(y: 20),
        myCircle(
          borderColor: border3,
          circleW: tSize,
          circleH: tSize,
        ),
        myspace(y: 20),
        myCircle(
          borderColor: border4,
          circleW: lSize,
          circleH: lSize,
        ),
        myspace(y: 20),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white38,
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
