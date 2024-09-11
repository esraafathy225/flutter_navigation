import 'package:flutter/material.dart';
import 'package:untitled2/pages/drawer_pages/ProfilePage.dart';
import 'package:untitled2/pages/drawer_pages/home_page.dart';
import 'package:untitled2/pages/drawer_pages/settings_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0;
  final _pages = [HomePage(),ProfilePage(),SettingsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text('Bottom Navigation Page'),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings')
        ],
      ),
    );
  }
}
