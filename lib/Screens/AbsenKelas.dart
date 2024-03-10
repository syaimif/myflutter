import 'package:flutter/material.dart';
import 'package:pertemuan4_flutter/CustomWidgets/DataMahasiswa.dart';
import 'package:pertemuan4_flutter/Objects/Mahasiswa.dart';

import '../Objects/Matkul.dart';

class AbsenKelas extends StatefulWidget {
  final Matkul matkul;
  const AbsenKelas({super.key, required this.matkul});

  @override
  State<AbsenKelas> createState() => _AbsenKelasState();
}

Mahasiswa mhs1 = Mahasiswa(namaMhs: "Samsul", NIM: "411073", isHadir: true);

Mahasiswa mhs2 = Mahasiswa(namaMhs: "Sugeng", NIM: "411090", isHadir: false);

class _AbsenKelasState extends State<AbsenKelas> {
  @override
  Widget build(BuildContext context) {
    List<Mahasiswa> listMahasiswa = [mhs1, mhs2];

    return Scaffold(
      appBar: AppBar(
        title: Text("Kelas ${widget.matkul.namaMatkul}"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 100,
              height: 30,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              margin: EdgeInsets.only(bottom: 12 * 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.greenAccent.shade200,
                  border: Border.all(
                      style: BorderStyle.solid, color: Colors.grey.shade200)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.matkul.waktuTerjadwal,
                    style: TextStyle(fontSize: 14),
                  ),
                  Text(
                    widget.matkul.ruangan,
                    style: TextStyle(fontSize: 14),
                  )
                ],
              ),
            ),
            Container(
              child: Expanded(
                  child: ListView.builder(
                      itemCount: listMahasiswa.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            listMahasiswa[index].isHadir =
                                !listMahasiswa[index].isHadir;
                            setState(() {});
                            //print(listMahasiswa[index].isHadir);
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            child: DataMahasiswa(mhs: listMahasiswa[index]),
                          ),
                        );
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
