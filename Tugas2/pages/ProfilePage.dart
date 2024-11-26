import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String nama = 'Billah';
  final String alamat = 'Serang Banten';
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Nama : $nama', // Gunakan interpolasi variabel nama
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            'Alamat: $alamat',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
