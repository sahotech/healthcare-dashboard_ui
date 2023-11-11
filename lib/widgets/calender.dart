// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';

import 'package:healthcare_dashboard_ui/utils/constant.dart';

class MyCalender extends StatelessWidget {
  const MyCalender({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 7,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          childAspectRatio: 1.2,
        ),
        itemCount: nov.length,
        itemBuilder: (BuildContext context, int index) {
          return CircleAvatar(
            backgroundColor: nov[index]['bcolor'],
            child: Text(
              nov[index]['day'].toString(),
              style: TextStyle(
                fontSize: 12,
                color: nov[index]['tcolor'],
              ),
            ),
          );
        },
      ),
    );
  }
}
