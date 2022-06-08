import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/gambar.dart';
import 'package:pemrograman_mobile/halaman1.dart';
import 'package:pemrograman_mobile/halaman2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Column(
                  children: [
                    Image.asset("assets/images/arsenal.png",
                        height: 50, fit: BoxFit.fill),
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      'Pemrograman Perangkat Mobile',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Halaman Gambar'),
              onTap: () {
                Navigator.of(context).pop();
                print("Halaman Gambar");
              },
            ),
            ListTile(
              title: const Text('Halaman Satu'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HalamanSatu(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Halaman Dua'),
              onTap: () {
                print("Halaman Dua");
              },
            ),
            Divider(
              thickness: 2,
              indent: 20,
              endIndent: 20,
              color: Colors.grey.shade400,
            ),
            ListTile(
              title: const Text('LogOut'),
              onTap: () {
                print("LogOut");
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: 450,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                colors: [
                  Colors.blue,
                  Colors.cyanAccent,
                ],
              ),
            ),
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 100,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/arsenal.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const Text(
                  "Container 1",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.grey[200],
            height: 303,
            width: 450,
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    print("Anda Mengklik ICON");
                  },
                  child: const Icon(
                    Icons.access_alarm,
                    size: 100,
                    color: Colors.amber,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("Anda Mengklik Tombol Ke Halaman Gambar");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HalamanGambar(),
                      ),
                    );
                  },
                  child: Text("Ke Halaman Gambar"),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    print("Anda Mengklik Tombol Dari TextButton");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HalamanSatu(),
                      ),
                    );
                  },
                  child: const Text('Ke Halaman Satu Pakai TextButton'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
