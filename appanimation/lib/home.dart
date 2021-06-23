import 'package:animationbottom/page/chat.dart';
import 'package:animationbottom/page/dashboard.dart';
import 'package:animationbottom/page/profile.dart';
import 'package:animationbottom/page/setting.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    Dashboard(),
    Chat(),
    Profile(),
    Setting(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildMaterialButton(
                      Dashboard(),
                    ),
                  
                  ],
                )
              ],
            ),
          ),
        ));
  }

  MaterialButton buildMaterialButton(
    Widget currentScreen,
  ) {
    return MaterialButton(
      minWidth: 40,
      onPressed: () {
        setState(() {
          currentScreen = currentScreen;
          currentTab = currentTab;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.dashboard,
            color: currentTab == 0 ? Colors.blue : Colors.grey,
          ),
          Text(
            'DashBoard',
            style: TextStyle(
              color: currentTab == 0 ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
