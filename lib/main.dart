import 'package:flutter/material.dart';
import 'package:untitled2/pages/drawer_pages/home_page.dart';
import 'package:untitled2/pages/drawer_pages/settings_page.dart';
import 'package:untitled2/pages/first_page.dart';
import 'package:untitled2/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: FirstPage()
      ),
      routes: {
        '/secondpage' : (context) => SecondPage(),
        '/homepage' : (context) => HomePage(),
        '/settingspage' : (context) => SettingsPage()
      },
    );
  }
}






