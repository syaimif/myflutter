import 'package:flutter/material.dart';
import 'package:pertemuan4_flutter/Objects/Mahasiswa.dart';
import 'package:pertemuan4_flutter/Screens/Beranda.dart';

import '../Objects/Matkul.dart';

class AbsenKelas extends StatefulWidget {
  final Matkul matkul;
  const AbsenKelas({super.key, required this.matkul});

  @override
  State<AbsenKelas> createState() => _AbsenKelasState();
}

class _AbsenKelasState extends State<AbsenKelas> {
  @override
  Widget build(BuildContext context) {
    Mahasiswa mhs1 = Mahasiswa(namaMhs: "Samsul", NIM: "411073", isHadir: true
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Kelas ${widget.matkul}"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.85,
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              margin: EdgeInsets.only(bottom: 12 * 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.redAccent.shade100,
                  border: Border.all(
                      style: BorderStyle.solid,
                      color: Colors.redAccent.shade400)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.matkul.waktuTerjadwal,
                        style: TextStyle(fontSize: 23),
                      ),
                      Text(
                        widget.matkul.ruangan,
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text("Data Mahasiswa"),
            SizedBox(
              height: spacing,
            ),
            Container(child:
              Expanded(
                child: ListView.builder(
                  itemCount: listMahasiswa.leg,
                    itemBuilder: (context, index){

                    }
              ),
            )
          ],
        ),
      ),
    );
  }
}
