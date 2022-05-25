import 'package:flutter/material.dart';

class HalamanGambar extends StatefulWidget {
  const HalamanGambar({Key? key}) : super(key: key);

  @override
  State<HalamanGambar> createState() => _HalamanGambarState();
}

class _HalamanGambarState extends State<HalamanGambar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menampilkan Gambar"),
      ),
      body: Column(
        children: [
          Image.asset(
            "assets/images/umb.png",
            width: 100,
            height: 100,
          ),
          // Image.network(
          //   "https://www.jogpaper.net/wp-content/uploads/2018/07/UM-Banjarmasin.png",
          //   width: 600,
          //   height: 200,
          // ),
        ],
      ),
    );
  }
}
