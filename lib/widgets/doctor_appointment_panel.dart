// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/utils/appcolors.dart';
import 'package:healthcare_dashboard_ui/utils/constant.dart';
import 'package:healthcare_dashboard_ui/widgets/calender.dart';

import 'our_patient_card.dart';

class DoctorAppointmentPanel extends StatelessWidget {
  DoctorAppointmentPanel({super.key});

  GlobalKey<ScaffoldState> scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(24),
        height: MediaQuery.sizeOf(context).height,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: cardColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: availablebg,
                    ),
                    const SizedBox(width: 3),
                    Text(
                      "Available",
                      style: TextStyle(
                        fontSize: 12,
                        color: availablebg,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.grey,
                    ),
                    SizedBox(width: 3),
                    Text(
                      "Full Booked",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 3,
                      backgroundColor: Colors.white10,
                    ),
                    SizedBox(width: 3),
                    Text(
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
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(doctor),
                ),
                const SizedBox(width: 10),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                const SizedBox(width: 50),
                const Icon(
                  Icons.keyboard_arrow_right_outlined,
                  color: Colors.white54,
                )
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'Our patient today',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white54,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OurPatientCard(
                  time: '100 AM',
                  imageurl: patient1,
                  name: 'Yanto Pacel',
                  age: '32',
                ),
                const SizedBox(width: 16),
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
                      backgroundColor: MaterialStatePropertyAll(highlightbg),
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
    );
  }
}
