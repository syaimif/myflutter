import 'package:flutter/material.dart';
import 'package:pertemuan4_flutter/Screens/Beranda.dart';

class AbsensiMahasiswa extends StatefulWidget {
  const AbsensiMahasiswa({super.key});

  @override
  State<AbsensiMahasiswa> createState() => _AbsensiMahasiswaState();
}

double spacingRow = 10;
double iconSizeColumn = 10;
double fontSizeBody = 10;
List listKelas = ["Alpro A", "Alpro B", "Pemweb A", "Pemweb B"];
List colorButton = [Colors.grey, Colors.green, Colors.blue, Colors.orange];

class _AbsensiMahasiswaState extends State<AbsensiMahasiswa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Absensi Mahasiswa',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Column(children: [
              Container(
                  child: Center(
                child: Text(
                  'ABSENSI MAHASISWA',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
              )),
              SizedBox(
                height: spacing,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: listKelas.length,
                    itemBuilder: (context, index) {
                      return TombolAbsensi(
                          label: listKelas[index], color: colorButton[index]);
                    }),
              ),
            ]),
          ),
        ));
  }
}

class TombolAbsensi extends StatelessWidget {
  const TombolAbsensi({super.key, required this.label, required this.color});

  final String label;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: fontSizeBody + 4),
          ),
        ],
      ),
      width: double.infinity,
      height: 70,
      margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
