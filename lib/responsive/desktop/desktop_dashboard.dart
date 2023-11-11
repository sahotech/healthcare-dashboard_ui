import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/widgets/blood_cell_card.dart';
import 'package:healthcare_dashboard_ui/widgets/heart_rate_card.dart';
import 'package:healthcare_dashboard_ui/widgets/hydration_level_card.dart';
import 'package:healthcare_dashboard_ui/widgets/sleep_period_card.dart';

import '../../utils/utils.dart';
import '../../widgets/blood_tracking_card.dart';
import '../../widgets/desktop_navbar.dart';
import '../../widgets/doctor_appointment_panel.dart';
import '../../widgets/weight_card.dart';

class DesktopDashboard extends StatefulWidget {
  const DesktopDashboard({super.key});

  @override
  State<DesktopDashboard> createState() => _DesktopDashboardState();
}

class _DesktopDashboardState extends State<DesktopDashboard> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 20,
        flexibleSpace: DesktopNavbar(currentIndex: currentIndex),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // left container
            DoctorAppointmentPanel(),
            // right container
            const SizedBox(width: 24),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 2,
                          child: Column(
                            children: [
                              const SizedBox(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        child: Text(
                                          'Daily healthy \n overview',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                    WeightCard(),
                                  ],
                                ),
                              ),
                              myspace(y: 20),
                              const SleepPeriodCard()
                            ],
                          ),
                        ),
                        myspace(x: 24),
                        Expanded(
                          child: SizedBox(
                            child: Column(
                              children: [
                                HeartRateCard(),
                                myspace(y: 20),
                                const HydrationLevelCard(),
                                myspace(y: 20),
                                BloodCellCard(),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    myspace(y: 20),
                    BloodTrackingCard(),
                    myspace(y: 30),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
