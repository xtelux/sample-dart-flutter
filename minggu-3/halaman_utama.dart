import 'package:flutter/material.dart';
import 'package:nusa_code/pages/halaman_baru.dart';

class HalamanUtama extends StatelessWidget {
  const HalamanUtama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigasi ke Halaman Baru
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HalamanBaru()),
            );
          },
          child: const Text('Pergi ke Halaman Baru'),
        ),
      ),
    );
  }
}
