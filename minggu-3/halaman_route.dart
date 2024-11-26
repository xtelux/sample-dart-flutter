import 'package:flutter/material.dart';
import 'package:nusa_code/pages/halaman_homescreen.dart';
import 'package:nusa_code/pages/halaman_homescreendua.dart';

class HalamanRoute extends StatelessWidget {
  const HalamanRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeScreen(),
          '/second': (context) => const SecondScreen()
        });
  }
}
