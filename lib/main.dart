import 'package:flutter/material.dart';
import 'package:pertemuan4_flutter/Screens/AbsensiMahasiswa.dart';
import 'package:pertemuan4_flutter/Screens/Account.dart';
import 'package:pertemuan4_flutter/Screens/GameLemparDadu.dart';
import 'package:pertemuan4_flutter/Screens/LihatNilai.dart';
import 'package:pertemuan4_flutter/Screens/ScanQR.dart';
import 'package:pertemuan4_flutter/Screens/Setting.dart';

import 'Screens/Beranda.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Beranda(),
      routes: {
        '/game-lempar-dadu': (context) => GameLemparDadu(),
        '/absensi-mahasiswa': (context) => AbsensiMahasiswa(),
        '/scan-qr': (context) => ScanQR(),
        'LihatNilai': (context) => LihatNilai(),
        'Akun': (context) => Akun(),
        'Settings': (context) => Setting(),
      },
    );
  }
}
