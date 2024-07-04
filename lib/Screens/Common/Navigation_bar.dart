import 'package:flutter/material.dart';
import 'package:job_jungle/Screens/User/Massage.dart';
import 'package:job_jungle/Screens/User/User_Home.dart';
import 'package:job_jungle/Screens/User/User_Profile.dart';
import 'package:job_jungle/Screens/User/User_service.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

int _selectedIndex = 0;
final PageController _pageController = PageController();
const List<Widget> _widgetOptions = <Widget>[
  Text('Home ', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  Text('Massage ', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  Text('Profile ', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  Text('Service ', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
];

class _NavigationState extends State<Navigation> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar Example'),
        backgroundColor: Colors.white,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          Massage(),
          User_Home(),
          User_Profile(),
          User_service(),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey[400],
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
