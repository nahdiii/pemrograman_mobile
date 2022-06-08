import 'package:flutter/material.dart';

class HalamanSatu extends StatefulWidget {
  const HalamanSatu({Key? key}) : super(key: key);

  @override
  State<HalamanSatu> createState() => _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Satu"),
      ),
      body: Center(
        child: Text("Halaman 1"),
      ),
    );
  }
}
