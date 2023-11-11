import 'package:flutter/material.dart';
import 'package:healthcare_dashboard_ui/responsive/responsive_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Healthcare Dashboard UI',
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      home: ResponsiveLayout(),
    );
  }
}
