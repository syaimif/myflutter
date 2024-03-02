import 'package:flutter/material.dart';

class LihatNilai extends StatefulWidget {
  const LihatNilai({super.key});

  @override
  State<LihatNilai> createState() => _LihatNilaiState();
}

class _LihatNilaiState extends State<LihatNilai> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          'Lihat Nilai',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
