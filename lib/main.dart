import 'package:flutter/material.dart';
import 'package:project/dashboard/dashboard.dart';

void main() {
  runApp(DashboardApp());
}

class DashboardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

