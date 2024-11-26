import 'package:flutter/material.dart';

class Pagenavigasi extends StatelessWidget {
  const Pagenavigasi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tab Navigasi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TabNavigationPage(),
    );
  }
}

class TabNavigationPage extends StatelessWidget {
  const TabNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Jumlah tab
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Navigation Example'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car)), // Tab pertama
              Tab(icon: Icon(Icons.directions_transit)), // Tab kedua
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Icon(Icons.directions_car, size: 100)), // Konten Tab pertama
            Center(child: Icon(Icons.directions_transit, size: 100)), // Konten Tab kedua
          ],
        ),
      ),
    );
  }
}