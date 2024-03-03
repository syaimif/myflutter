import 'package:flutter/material.dart';

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
    Color colorFakultas = Colors.white;
    if (fakultas == "SAINTEK") {
      colorFakultas = Colors.cyan;
    } else if (fakultas == "FAI") {
      colorFakultas = Colors.yellow;
    } else if (fakultas == "FIK") {
      colorFakultas = Colors.pinkAccent;
    } else if (fakultas == "FBBP") {
      colorFakultas = Colors.red;
    }

    return InkWell(
      onTap: () {
        print(namaMatkul);
        Navigator.pushNamed(context, 'AbsenKelas', arguments: namaMatkul);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        margin: EdgeInsets.only(bottom: 12 + 2),
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
                        ),
                      ]),
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: colorFakultas,
              child: Text(dosenPengampu),
            ),
          ],
        ),
      ),
    );
  }
}
