// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:healthcare_dashboard_ui/responsive/desktop/desktop_dashboard.dart';
import 'package:healthcare_dashboard_ui/responsive/mobile/mobile_dashboard.dart';
import 'package:healthcare_dashboard_ui/responsive/tablet/tablet_dashboard.dart';

class ResponsiveLayout extends StatelessWidget {
  ResponsiveLayout({super.key});

  int mobile = 800;
  int tablet = 1200;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < mobile) {
          return const MobileDashboard();
        } else if (constraints.maxWidth < tablet) {
          return const TabletDashboard();
        } else {
          return const DesktopDashboard();
        }
      },
    );
  }
}
