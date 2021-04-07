import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:jennings/screens/Activity/activities.dart';
import 'package:jennings/screens/Home.dart';
import 'package:jennings/screens/Home/MainHome.dart';
import 'package:jennings/screens/Settings/Settings.dart';
import 'package:jennings/screens/notes/notes.dart';
import 'package:jennings/screens/sizeConfig/SizeConfig.dart';
import 'package:line_icons/line_icons.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key}) : super(key: key);
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {

  int _selectedIndex = 0;
  final List<Widget> _widgetOption =[
    MainHome(),
    Activities(),
    Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white,boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
        ]),

        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 8),
            child: GNav(
              gap: 6,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 2),
              duration: Duration(milliseconds: 800),
              tabBackgroundColor: Colors.blue,

              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.notes,
                  text: 'Activities',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index){
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),

      );
  }
}
