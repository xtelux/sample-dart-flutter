import 'package:flutter/material.dart';
import 'package:nusa_code/pages/HomePage.dart';
import 'package:nusa_code/pages/ProfilePage.dart';
import 'package:nusa_code/pages/SettingPage.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  int SelectIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const ProfilePage(),
    const SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Billah Apps'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.blueAccent,
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Integrasi data',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(child: pages[SelectIndex])
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: SelectIndex,
          onTap: (index) {
            setState(() {
              SelectIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle_outlined),
                label: 'Profile'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ]),
    );
  }
}

