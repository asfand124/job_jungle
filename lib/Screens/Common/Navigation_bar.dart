import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


import 'package:job_jungle/Screens/User/Massage.dart';
import 'package:job_jungle/Screens/User/User_Home.dart';
import 'package:job_jungle/Screens/User/User_Profile.dart';
import 'package:job_jungle/Screens/User/User_service.dart';

class navigationbar extends StatefulWidget {
  const navigationbar({super.key});

  @override
  State<navigationbar> createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    User_Home(),
    User_service(),
    Massage(),
    User_Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[_selectedIndex],
        backgroundColor: Colors.grey.shade300,
        bottomNavigationBar: CurvedNavigationBar(
          height: 68,
          backgroundColor: Colors.white,
          color: Colors.black87,
          // animationCurve: Curves.bounceIn,
          animationDuration: Duration(milliseconds: 400),
          buttonBackgroundColor: Colors.black,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            Icon(Icons.home),
            Icon(Icons.work),
            Icon(Icons.message_rounded),
            Icon(Icons.person),
          ],
        ));
  }
}
// onTabChange: (int index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },