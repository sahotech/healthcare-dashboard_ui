import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/utils/appcolors.dart';

myspace({double? x, double? y}) {
  return SizedBox(
    width: x,
    height: y,
  );
}

List cells = [
  colGroup(18, 20, 15, 25, border1, border2, border3, border4, '06.00 AM'),
  colGroup(25, 20, 15, 25, border1, border2, border3, border4, '07.00 AM'),
  colGroup(25, 20, 15, 25, border1, border2, border3, border4, '08.00 AM'),
  colGroup(25, 20, 15, 18, border1, border2, border3, border4, '09.00 AM'),
  colGroup(18, 20, 15, 18, border1, border2, border3, border4, '15.00 AM'),
  colGroup(18, 20, 15, 18, border1, border2, border3, border4, '11.00 AM'),
  colGroup(18, 20, 15, 18, border1, border2, border3, border4, '12.00 PM'),
  colGroup(18, 20, 15, 18, border1, border2, border3, border4, '01.00 PM'),
  colGroup(18, 20, 15, 18, border1, border2, border3, border4, '02.00 PM'),
  colGroup(18, 20, 15, 18, border1, border2, border3, border4, '03.00 PM'),
];
final Color border1 = availablebg;
final Color border2 = Colors.blue.shade200;
const Color border3 = Colors.blue;
final Color border4 = availablebg;

Container myCircle({
  required Color borderColor,
  required double circleW,
  required double circleH,
}) {
  return Container(
    padding: const EdgeInsets.all(4),
    width: circleW,
    height: circleH,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        width: 2,
        color: borderColor,
      ),
    ),
    child: CircleAvatar(
      backgroundColor: borderColor,
    ),
  );
}

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
