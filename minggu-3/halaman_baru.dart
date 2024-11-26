import 'package:flutter/material.dart';

class HalamanBaru extends StatelessWidget {
  const HalamanBaru({super.key});

  get conts => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Billah'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Kembali ke halaman utama'),
        ),
      ),
    );
  }
}
