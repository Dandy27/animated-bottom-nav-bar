import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DashBoard'),
      ),
      body: Center(
        child: Text(
          'DashBoard Screen ',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
