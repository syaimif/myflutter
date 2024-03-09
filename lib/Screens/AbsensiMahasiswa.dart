import 'package:flutter/material.dart';
import 'package:pertemuan4_flutter/Objects/Matkul.dart';
import 'package:pertemuan4_flutter/Screens/Beranda.dart';

import '../CustomWidgets/PilihanKelas.dart';

class AbsensiMahasiswa extends StatefulWidget {
  const AbsensiMahasiswa({super.key});

  @override
  State<AbsensiMahasiswa> createState() => _AbsensiMahasiswaState();
}

double spacingRow = 10;
double iconSizeColumn = 10;
double fontSizeBody = 10;

List colorButton = [Colors.grey, Colors.green, Colors.blue, Colors.orange];

class _AbsensiMahasiswaState extends State<AbsensiMahasiswa> {
  @override
  Widget build(BuildContext context) {
    Matkul matkul1 = Matkul(
        namaMatkul: "Alpro 1",
        waktuTerjadwal: "Senin, 09.00-11.00",
        dosenPengampu: "MM",
        ruangan: "Labkom Net 1",
        fakultas: "SAINTEK");

    Matkul matkul2 = Matkul(
        namaMatkul: "Pemweb 2",
        waktuTerjadwal: "Selasa, 09.00-11.00",
        dosenPengampu: "TP",
        ruangan: "Lab Saintek",
        fakultas: "FIK");

    Matkul matkul3 = Matkul(
        namaMatkul: "Pendidikan Agama Islam",
        waktuTerjadwal: "Senin, 09.00-11.00",
        dosenPengampu: "IM",
        ruangan: "U-201",
        fakultas: "FAI");

    Matkul matkul4 = Matkul(
        namaMatkul: "Bisnis Masa Depan",
        waktuTerjadwal: "Senin, 09.00-11.00",
        dosenPengampu: "SW",
        ruangan: "U-202",
        fakultas: "FBBP");

    List<Matkul> listMatkul = [matkul1, matkul2, matkul3, matkul4];

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
              Container(
                child: Expanded(
                  child: ListView.builder(
                      itemCount: listMatkul.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, 'AbsenKelas',
                                arguments: listMatkul[index]);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 16),
                            child: PilihanKelas(
                              matkul: listMatkul[index],
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ]),
          ),
        ));
  }
}
