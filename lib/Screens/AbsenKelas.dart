import 'package:flutter/material.dart';

class AbsenKelas extends StatefulWidget {
  final String namaKelas;

  const AbsenKelas({super.key, required this.namaKelas});

  @override
  State<AbsenKelas> createState() => _AbsenKelasState();
}

class _AbsenKelasState extends State<AbsenKelas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kelas ${widget.namaKelas}"),
      ),
      body: Container(),
    );
  }
}
