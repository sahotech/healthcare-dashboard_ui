import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/utils/appcolors.dart';
import 'package:healthcare_dashboard_ui/utils/constant.dart';
import 'package:healthcare_dashboard_ui/utils/utils.dart';
import 'package:healthcare_dashboard_ui/widgets/blood_cell_card.dart';
import 'package:healthcare_dashboard_ui/widgets/heart_rate_card.dart';
import 'package:healthcare_dashboard_ui/widgets/hydration_level_card.dart';
import 'package:healthcare_dashboard_ui/widgets/our_patient_card.dart';
import 'package:healthcare_dashboard_ui/widgets/sleep_period_card.dart';
import 'package:healthcare_dashboard_ui/widgets/weight_card.dart';

import '../../widgets/calender.dart';

class MobileDashboard extends StatefulWidget {
  const MobileDashboard({super.key});

  @override
  State<MobileDashboard> createState() => _MobileDashboardState();
}

class _MobileDashboardState extends State<MobileDashboard> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final ss = MediaQuery.sizeOf(context);
    return Scaffold(
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
                  CircleAvatar(
                    backgroundImage: AssetImage(profile),
                    child: const Icon(
                      Icons.search,
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                    // backgroundImage: AssetImage(logo),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ==== Doctor Appointment Card ====

              Container(
                padding: const EdgeInsets.all(16),
                width: ss.width,
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //
                    const Text(
                      "Doctor's appointment",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const Text(
                      "prepared to discuss with doctor",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white30,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Available date to consultations",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white54,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const MyCalender(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundImage: AssetImage(doctor),
                            ),
                            myspace(x: 3),
                            Text(
                              "Available",
                              style: TextStyle(
                                fontSize: 12,
                                color: availablebg,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.grey,
                            ),
                            myspace(x: 3),
                            const Text(
                              "Full Booked",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.white10,
                            ),
                            myspace(x: 3),
                            const Text(
                              "Not Available",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(doctor),
                            ),
                            myspace(x: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Dr. Arcadius Phina'),
                                Text(
                                  'Orthopedic doctor',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white24,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 50),
                        const Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.white54,
                        )
                      ],
                    ),
                    //
                    myspace(y: 10),
                    const Text(
                      'Our patient today',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white54,
                      ),
                    ),
                    myspace(y: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OurPatientCard(
                          time: '100 AM',
                          imageurl: patient1,
                          name: 'Yanto Pacel',
                          age: '32',
                        ),
                        myspace(x: 16),
                        OurPatientCard(
                          time: '13.00 PM',
                          imageurl: patient2,
                          name: 'lex Galon',
                          age: '56',
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(61, 48, 69, 0.9),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.email_outlined,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 5),
                        IconButton(
                          style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                              Color.fromRGBO(61, 48, 69, 0.9),
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(
                            Icons.call_outlined,
                            size: 18,
                          ),
                        ),
                        const SizedBox(width: 5),
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(highlightbg),
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Book Consultations',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              // ==== ====
              myspace(y: 20),
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
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    WeightCard(),
                  ],
                ),
              ),
              myspace(y: 20),

              // ==== Doctor Appointment Card====
              const SleepPeriodCard(),
              myspace(y: 20),
              HeartRateCard(),
              myspace(y: 20),
              const HydrationLevelCard(),
              myspace(y: 20),
              BloodCellCard(),
              myspace(y: 20),
              Container(
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
                          colGroup(18, 18, 15, 20, border1, border2, border3,
                              border4, '06.00 AM'),
                          colGroup(20, 18, 15, 20, border1, border2, border3,
                              border4, '07.00 AM'),
                          colGroup(20, 18, 15, 20, border1, border2, border3,
                              border4, '08.00 AM'),
                          colGroup(20, 18, 15, 18, border1, border2, border3,
                              border4, '09.00 AM'),
                          colGroup(18, 18, 15, 18, border1, border2, border3,
                              border4, '15.00 AM'),
                          colGroup(18, 18, 15, 18, border1, border2, border3,
                              border4, '11.00 AM'),
                          colGroup(18, 18, 15, 18, border1, border2, border3,
                              border4, '12.00 PM'),
                          colGroup(18, 18, 15, 18, border1, border2, border3,
                              border4, '01.00 PM'),
                          colGroup(18, 18, 15, 18, border1, border2, border3,
                              border4, '02.00 PM'),
                          colGroup(18, 18, 15, 18, border1, border2, border3,
                              border4, '03.00 PM'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],

            // ==== Doctor Appointment Card====
            // ==== Doctor Appointment Card====
          ),
        ),
      ),
    );
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
