
import 'package:flutter/material.dart';
import 'package:nusa_code/pages/halaman_navigasi.dart';
import 'package:nusa_code/pages/halaman_route.dart';
import 'package:nusa_code/pages/mainroute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nusa Code',
      debugShowCheckedModeBanner: false,
      home: const Pagenavigasi(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
