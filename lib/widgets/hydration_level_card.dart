import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/utils/appcolors.dart';
import 'package:healthcare_dashboard_ui/utils/utils.dart';

class HydrationLevelCard extends StatelessWidget {
  const HydrationLevelCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue.shade700,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Hydration level',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          myspace(y: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 110,
                  child: SfRadialGauge(
                    axes: [
                      RadialAxis(
                        startAngle: 172,
                        endAngle: 7,
                        showLabels: false,
                        axisLineStyle: AxisLineStyle(
                          gradient: SweepGradient(colors: [
                            availablebg,
                            availablebg,
                            availablebg,
                            availablebg,
                            availablebg,
                            availablebg,
                            availablebg,
                            availablebg,
                            availablebg,
                            availablebg,
                            availablebg,
                            availablebg,
                            Colors.white38,
                            Colors.white38,
                            Colors.white38,
                            Colors.white38,
                          ]),
                          color: Colors.white,
                          thickness: 30,
                          dashArray: const [
                            7,
                            5,
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.topRight,
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '86',
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: '%',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '132 ml mineral water today',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white54,
                ),
              ),
              Text(
                '2 L per days',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
