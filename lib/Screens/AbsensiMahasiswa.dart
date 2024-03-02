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
                      fontSize: 36,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: spacing,
              ),
              PilihanKelas(
                  namaMatkul: 'Alpro A',
                  waktuTerjadwal: 'Senin, 09.00-11.00',
                  ruang: 'Labkom Net 2',
                  dosenPengampu: 'MM',
                  fakultas: 'Saintek'),
              PilihanKelas(
                  namaMatkul: 'Alpro B',
                  waktuTerjadwal: 'Selasa, 09.00-11.00',
                  ruang: 'Labkom Net 2',
                  dosenPengampu: 'TP',
                  fakultas: 'Saintek')
            ]),
          ),
        ));
  }
}

class PilihanKelas extends StatelessWidget {
  final String namaMatkul;
  final String waktuTerjadwal;
  final String ruang;
  final String dosenPengampu;
  final String fakultas;

  const PilihanKelas(
      {super.key,
      required this.namaMatkul,
      required this.waktuTerjadwal,
      required this.ruang,
      required this.dosenPengampu,
      required this.fakultas});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      margin: EdgeInsets.only(bottom: spacingRow + 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.redAccent.shade100,
          border: Border.all(
              style: BorderStyle.solid, color: Colors.redAccent.shade400)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                namaMatkul,
                style: TextStyle(fontSize: 23),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        waktuTerjadwal,
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        ruang,
                        style: TextStyle(fontWeight: FontWeight.normal),
                      )
                    ]),
              ),
            ],
          ),
          CircleAvatar(
            child: Text(dosenPengampu),
          )
        ],
      ),
    );
  }
}
