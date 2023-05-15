import 'package:flutter/material.dart';
import 'package:heinz_dashboard/screens/dashboard_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 16.0),
          child: DashboardPage(),
        ),
      ),
    );
  }
}
