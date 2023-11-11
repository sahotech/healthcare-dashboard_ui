import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/utils/appcolors.dart';
import 'package:healthcare_dashboard_ui/utils/constant.dart';
import 'package:healthcare_dashboard_ui/utils/utils.dart';
import 'package:healthcare_dashboard_ui/widgets/blood_cell_card.dart';
import 'package:healthcare_dashboard_ui/widgets/blood_tracking_card.dart';
import 'package:healthcare_dashboard_ui/widgets/doctor_appointment_panel.dart';
import 'package:healthcare_dashboard_ui/widgets/heart_rate_card.dart';
import 'package:healthcare_dashboard_ui/widgets/hydration_level_card.dart';
import 'package:healthcare_dashboard_ui/widgets/sleep_period_card.dart';

import '../../widgets/weight_balance_lines.dart';

class TabletDashboard extends StatefulWidget {
  const TabletDashboard({super.key});

  @override
  State<TabletDashboard> createState() => _TabletDashboardState();
}

class _TabletDashboardState extends State<TabletDashboard> {
  int currentIndex = 0;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          toolbarHeight: kToolbarHeight + 20,
          flexibleSpace: Row(
            children: [
              myspace(x: 40),
              SizedBox(
                width: 100,
                height: 75,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Image.asset(logo),
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Row(
                  children: [
                    const CircleAvatar(
                      child: Icon(
                        Icons.search,
                        size: 20,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 8),
                      decoration: BoxDecoration(
                          color: cardColor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const Row(
                        children: [
                          Stack(
                            alignment: Alignment(0.7, -1),
                            children: [
                              Icon(
                                Icons.notifications_outlined,
                                size: 20,
                                color: Colors.grey,
                              ),
                              CircleAvatar(
                                radius: 3,
                                backgroundColor: Colors.red,
                              )
                            ],
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.info_outlined,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(profile),
                      backgroundColor: cardColor,
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi, Svetana Glean'),
                        Text(
                          '28 Years old',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        drawer: myDrawer(),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ======= Doctor Panel ======
            DoctorAppointmentPanel(),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        child: Text(
                          'Daily healthy \n overview',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      myspace(y: 20),

                      Container(
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
                      myspace(y: 20),

                      // ======= Sleep Period Card======
                      const SleepPeriodCard(),
                      myspace(y: 20),

                      HeartRateCard(),
                      myspace(y: 20),

                      const HydrationLevelCard(),
                      myspace(y: 20),
                      // =======Blood Cell Card======
                      BloodCellCard(),
                      myspace(y: 20),
                      // =======Blood Tracking Card======
                      BloodTrackingCard(),
                      myspace(y: 40),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  myDrawer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      height: 600,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: navbarColor,
      ),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: navTitle.length,
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      navIcons[index],
                      size: 24,
                      color: currentIndex == index ? Colors.white : Colors.grey,
                    ),
                    myspace(x: 10),
                    Text(
                      navTitle[index],
                      style: TextStyle(
                        color:
                            currentIndex == index ? Colors.white : Colors.grey,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
