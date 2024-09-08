import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text('First Page'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondpage');
              },
              child: Text('Navigate to Second Page'))),
    drawer: Drawer(
      backgroundColor: Colors.deepPurple[100],
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.favorite,size: 42,)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/homepage');
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: (){
              Navigator.pop(context);
              Navigator.pushNamed(context, '/settingspage');
            },
          )
        ],
      ),
    ),
    );
  }
}
