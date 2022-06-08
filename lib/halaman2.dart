import 'package:flutter/material.dart';

class HalamanDua extends StatefulWidget {
  const HalamanDua({Key? key}) : super(key: key);

  @override
  State<HalamanDua> createState() => _HalamanDuaState();
}

class _HalamanDuaState extends State<HalamanDua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Dua"),
      ),
      body: Center(
        child: Text("Halaman Dua"),
      ),
    );
  }
}
