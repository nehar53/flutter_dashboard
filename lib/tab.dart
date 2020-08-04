import 'package:flutter/material.dart';

import 'crousel.dart';

class TabContainerDefault extends StatefulWidget {
  TabContainerDefault({Key key, String title}) : super(key: key);

  @override
  _TabContainerDefaultState createState() => _TabContainerDefaultState();
}

class _TabContainerDefaultState extends State<TabContainerDefault> {
  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      Crousel(),
      // Crousel(),
      Crousel(),
      Crousel(),
      Crousel(),
      Crousel(),
    ];
  }

  _buildNavItem(IconData icon, bool active) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Colors.teal.shade900,
      child: CircleAvatar(
        radius: 25,
        backgroundColor:
            active ? Colors.white.withOpacity(0.9) : Colors.transparent,
        child: Icon(
          icon,
          color: active ? Colors.black : Colors.white.withOpacity(0.9),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.redAccent,
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          body: TabBarView(
              physics: NeverScrollableScrollPhysics(), children: listScreens),
          bottomNavigationBar: TabBar(
            tabs: [
              _buildNavItem(
                Icons.home,
                false,
              ),
              // _buildNavItem(Icons.home, true),

              // SizedBox(width: 1),
              _buildNavItem(Icons.check_box_outline_blank, false),
              // SizedBox(width: 1),
              _buildNavItem(Icons.list, false),
              // _buildNavItem(Icons.bubble_chart, false),
              // SizedBox(width: 1),
              // SizedBox(width: 1),
              _buildNavItem(Icons.account_balance_wallet, false),
              // _buildNavItem(Icons.bubble_chart, false),
              // SizedBox(width: 1),
              _buildNavItem(Icons.account_box, false),
              // _buildNavItem(Icons.bubble_chart, false),
            ],
          ),

          // backgroundColor: Colors.redAccent
        ),
      ),
    );
  }
}
