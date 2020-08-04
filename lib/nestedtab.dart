import 'package:flutter/material.dart';

class NestedTabBar extends StatefulWidget {
  @override
  _NestedTabBarState createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;

  @override
  void initState() {
    super.initState();

    _nestedTabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        TabBar(
          controller: _nestedTabController,
          indicatorColor: Colors.teal,
          labelColor: Colors.teal,
          unselectedLabelColor: Colors.black54,
          isScrollable: true,
          tabs: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 70.0,
                height: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 70.0,
                height: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 70.0,
                height: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
                        ),
                        fit: BoxFit.cover)),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Container(
                width: 70.0,
                height: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
                        ),

                        //u can add the assetimage instead of network
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
        /* Container(
          height: 50, // screenHeight * 0.70,
          margin: EdgeInsets.only(left: 16.0, right: 16.0),
          child: TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              Tab(
                text: "Billing Address",
              ),
              Tab(
                text: "Gst",
              ),
              Tab(
                text: "Opening Balance",
              ),
              Tab(
                text: "Opening Balance",
              ),
            ],
          ),
        )*/
      ],
    );
  }
}
