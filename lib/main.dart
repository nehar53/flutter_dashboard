import 'package:flutter/material.dart';
import 'package:united_app/crousel.dart';
import 'tab.dart';

void main() {
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'fgfgfg',

      debugShowCheckedModeBanner: false,
      home: TabContainerDefault(),
    );
  }
}

class CustomBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getCustomAppBar(),
      bottomNavigationBar: _getNavBar(context),
    );
  }
}

_getCustomAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(50),
    child: Container(
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Colors.tealAccent,
            Colors.redAccent,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                // Navigator.push(context, route)=>;
              }),
          Text(
            'United',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
        ],
      ),
    ),
  );
}

_getNavBar(context) {
  return Stack(
    children: <Widget>[
      /* Positioned(
        bottom: 0,
        child: ClipPath(
          clipper: NavBarClipper(),
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.teal,
                  Colors.teal.shade900,
                ])),
          ),
        ),
      ),*/
      Positioned(
        bottom: 0,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildNavItem(Icons.home, true),

            SizedBox(width: 1),
            _buildNavItem(Icons.check_box_outline_blank, true),
            SizedBox(width: 1),
            _buildNavItem(Icons.list, true),
            // _buildNavItem(Icons.bubble_chart, false),
            // SizedBox(width: 1),
            SizedBox(width: 1),
            _buildNavItem(Icons.account_balance_wallet, true),
            // _buildNavItem(Icons.bubble_chart, false),
            SizedBox(width: 1),
            _buildNavItem(Icons.account_box, true),
            // _buildNavItem(Icons.bubble_chart, false),
          ],
        ),
      ),
      Positioned(
        bottom: 10,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('Home',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontWeight: FontWeight.w500)),
            SizedBox(
              width: 1,
            ),
            Text('Bookings',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontWeight: FontWeight.w500)),
            SizedBox(
              width: 1,
            ),
            Text('UC Safe',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontWeight: FontWeight.w500)),
            Text('Rewards',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontWeight: FontWeight.w500)),
            SizedBox(
              width: 1,
            ),
            Text('Profile',
                style: TextStyle(
                    color: Colors.black.withOpacity(0.9),
                    fontWeight: FontWeight.w500)),
          ],
        ),
      )
    ],
  );
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

class NavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    var sw = size.width;
    var sh = size.height;

    path.cubicTo(sw / 12, 0, sw / 12, 2 * sh / 5, 2 * sw / 12, 2 * sh / 5);
    path.cubicTo(3 * sw / 12, 2 * sh / 5, 3 * sw / 12, 0, 4 * sw / 12, 0);
    path.cubicTo(
        5 * sw / 12, 0, 5 * sw / 12, 2 * sh / 5, 6 * sw / 12, 2 * sh / 5);
    path.cubicTo(7 * sw / 12, 2 * sh / 5, 7 * sw / 12, 0, 8 * sw / 12, 0);
    path.cubicTo(
        9 * sw / 12, 0, 9 * sw / 12, 2 * sh / 5, 10 * sw / 12, 2 * sh / 5);
    path.cubicTo(11 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.cubicTo(13 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.cubicTo(15 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);
    path.cubicTo(1 * sw / 12, 2 * sh / 5, 11 * sw / 12, 0, sw, 0);

    path.lineTo(sw, sh);
    path.lineTo(0, sh);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
