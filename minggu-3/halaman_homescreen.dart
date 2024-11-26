import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman kedua menggunakan Named Route
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Pergi ke Halaman Kedua'),
        ),
      ),
    );
  }
}
