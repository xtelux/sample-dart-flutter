import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman SecondScreen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke halaman kedua menggunakan Named Route
            Navigator.pop(context);
          },
          child: const Text('kembali ke utama'),
        ),
      ),
    );
  }
}
