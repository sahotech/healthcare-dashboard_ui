// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/utils/appcolors.dart';

class MyBarGraph extends StatelessWidget {
  MyBarGraph({
    Key? key,
  }) : super(key: key);

  var barcolor = Colors.white30;
  double width = 40;
  var borderradius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: BarChart(
        BarChartData(
          maxY: 10,
          minY: 2,
          borderData: FlBorderData(
            show: false,
          ),
          gridData: const FlGridData(
            show: true,
            drawHorizontalLine: true,
            drawVerticalLine: false,
          ),
          titlesData: const FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: bottomTitles,
                reservedSize: 42,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 70,
                interval: 1,
                getTitlesWidget: leftTitles,
              ),
            ),
          ),
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              tooltipBgColor: Colors.white24,
              tooltipRoundedRadius: 10,
            ),
          ),
          barGroups: [
            myBarGroupData(x: 0, y: 6, context: context),
            myBarGroupData(x: 1, y: 8.1, context: context),
            myBarGroupData(x: 1, y: 9.1, context: context),
            myBarGroupData(x: 3, y: 8.1, context: context),
            myBarGroupData(x: 4, y: 9.5, color: availablebg, context: context),
            myBarGroupData(x: 5, y: 8.3, context: context),
          ],
        ),
      ),
    );
  }

  BarChartGroupData myBarGroupData({
    required int x,
    required double y,
    Color? color,
    required BuildContext context,
  }) {
    final sw = MediaQuery.sizeOf(context).width;
    return BarChartGroupData(
      // showingTooltipIndicators: [0],
      groupVertically: true,
      barsSpace: 30,
      x: x,
      barRods: [
        BarChartRodData(
          width: sw < 400
              ? 15
              : sw < 500
                  ? 20
                  : sw < 600
                      ? 25
                      : sw < 900
                          ? 25
                          : sw < 1400
                              ? 35
                              : 40,
          toY: y,
          color: color ?? Colors.white24,
          borderRadius: borderradius,
        )
      ],
    );
  }

  int index = 0;
}

Widget bottomTitles(double value, TitleMeta meta) {
  final titles = <String>['Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'];

  final Widget text = Text(
    titles[value.toInt()],
    style: const TextStyle(
      color: Colors.white24,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
  );

  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 24, //margin top
    child: text,
  );
}

Widget leftTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.white24,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  String text;
  if (value == 2) {
    text = '2 Hours';
  } else if (value == 4) {
    text = '4 Hours';
  } else if (value == 6) {
    text = '6 Hours';
  } else if (value == 8) {
    text = '8 Hours';
  } else if (value == 10) {
    text = '10 Hours';
  } else {
    return Container();
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 1,
    angle: 0,
    child: Text(text, style: style),
  );
}
