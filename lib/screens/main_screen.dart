import 'package:flutter/material.dart';
import 'package:project_questy/screens/dashboard.dart';
import 'package:project_questy/screens/quests.dart';
import 'package:project_questy/screens/profile.dart';
import 'package:project_questy/screens/tavern.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List _dashboardOptions = [
    const Dashboard(),
    const QuestsPage(title: 'Quests Board'),
    const TavernPage(),
    const ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.grey[900],
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Stack(
          children: [
            IndexedStack(
              index: _currentIndex,
              children: const [
                Dashboard(),
                QuestsPage(title: 'Quests Board'),
                TavernPage(),
                ProfilePage(),
              ],
            ),
          ],
        ),
      ),
      // Bottom Naviagtion
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_rounded),
            label: 'Quest Board',
            tooltip: 'Quest Board',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cottage),
            label: 'Tavern',
            tooltip: 'Tavern',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            tooltip: 'Profile',
          ),
        ],
      ),
    );
  }
}
