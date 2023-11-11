import 'package:flutter/material.dart';

import '../utils/appcolors.dart';
import '../utils/constant.dart';

class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // ====== Logo =======
          SizedBox(
            width: 100,
            height: 75,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Image.asset(logo),
            ),
          ),

          // ====== Navbar =======
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: navbarColor,
              ),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: navTitle.length,
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          currentIndex == index
                              ? CircleAvatar(
                                  radius: 5,
                                  backgroundColor: Colors.blue.shade700)
                              : Container(),
                          const SizedBox(width: 10),
                          Text(
                            navTitle[index],
                            style: TextStyle(
                              color: currentIndex == index
                                  ? Colors.white
                                  : Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // ====== The res of Navbar items =======
          const Spacer(),

          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: cardColor,
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
    );
  }
}
