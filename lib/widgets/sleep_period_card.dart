import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/utils/appcolors.dart';
import 'package:healthcare_dashboard_ui/widgets/bar_graph.dart';

class SleepPeriodCard extends StatelessWidget {
  const SleepPeriodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final sw = MediaQuery.sizeOf(context).width;
    return Container(
      // height: 400,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: highlightbg,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(
                      CupertinoIcons.moon_fill,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sleep periodic',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: sw < 500
                            ? 200
                            : sw < 600
                                ? 250
                                : sw < 1000
                                    ? 200
                                    : 300,
                        child: const Text(
                          'Control your sleep to create great habit',
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Monthly',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white54,
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    child: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                      color: Colors.white54,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Avg your sleep',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '9 Hours 40 munites',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),

          ///
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '6.2 ',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Hours',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white24,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 7,
                        backgroundColor: highlightbg,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Deep sleep',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: '1.6 ',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'Hours',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white24,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 30),

              // ======= Bar chart ======
              Expanded(
                flex: 2,
                child: SizedBox(
                  height: 200,
                  child: MyBarGraph(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
