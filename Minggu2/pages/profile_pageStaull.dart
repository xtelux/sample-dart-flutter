import 'package:flutter/material.dart';
import 'package:pertemuan3/helpers/helper.dart';
import 'package:pertemuan3/widgets/counter_widget.dart';

class ProfilePages extends StatefulWidget {
  const ProfilePages({super.key});

  @override
  State<ProfilePages> createState() => _ProfilePagesState();
}

class _ProfilePagesState extends State<ProfilePages> {
  String name = 'Bilah';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile : $name'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello, $name!', style: const TextStyle(fontSize: 30)),
            const SizedBox(height: 20),
            Text('Rumus segitiga : ${luasSegitiga(10, 2)}',
                style: const TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            FilledButton.icon(
              onPressed: () {},
              iconAlignment: IconAlignment.end,
              label: const Text('Login'),
              icon: const Icon(Icons.login),
            ),
            const SizedBox(height: 20),
            FilledButton.tonalIcon(
              onPressed: () {},
              iconAlignment: IconAlignment.end,
              label: const Text('Login'),
              icon: const Icon(Icons.login),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              iconAlignment: IconAlignment.start,
              label: const Text('Login'),
              icon: const Icon(Icons.login),
            ),
            const SizedBox(height: 20), // Spacer untuk memberikan jarak
            Container(
              width: 200,
              height: 300,
              color: Colors.blue, // Warna background untuk ilustrasi
              child: const Column(
                // Menggunakan Column untuk children
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CounterWidget(
                    counter: 1,
                    description: 'A',
                  ),
                  SizedBox(height: 10), // Jarak antar CounterWidget
                  CounterWidget(
                    counter: 2,
                    description: 'B',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

