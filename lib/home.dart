import 'package:flutter/material.dart';
import 'package:pemrograman_mobile/gambar.dart';

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
            child: const Text(
              "Container 1",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
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
                        builder: (context) => HalamanGambar(),
                      ),
                    );
                  },
                  child: const Text('Ke Halaman Gambar Pakai TextButton'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
