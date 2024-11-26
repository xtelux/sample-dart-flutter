import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String nama = "Menu Pertama";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Billah', style: TextStyle(fontSize: 20)),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              color: Colors.amber[50],
              child: const Center(
                child: Text(
                  "Konten Utama",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orangeAccent[800],
              child: ListView(
                padding: const EdgeInsets.all(10),
                children: [
                  const ListTile(
                    leading: Icon(Icons.menu),
                    title: Text('Menu 1'),
                    subtitle: Text('Submenu 1'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.menu_book),
                    title: Text('Menu 2'),
                    subtitle: Text('Submenu 2'),
                  ),
                  const ListTile(
                    leading: Icon(Icons.menu_open),
                    title: Text('Menu 3'),
                    subtitle: Text('Submenu 3'),
                  ),
                  SizedBox(
                    height: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('klik saya'),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.all(5),
                          color: Colors.green, // Titik koma ditambahkan di sini
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: GridView.count(
                      crossAxisCount: 2, // crossAxisCount diatur minimal 1
                      children: [
                        Container(color: Colors.red),
                        Container(color: Colors.blue),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.black12,
            child: const Center(
              child: Text(
                "Footer",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
