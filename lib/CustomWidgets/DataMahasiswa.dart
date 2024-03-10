import 'package:flutter/material.dart';

import '../Objects/Mahasiswa.dart';

class DataMahasiswa extends StatelessWidget {
  final Mahasiswa mhs;
  const DataMahasiswa({super.key, required this.mhs});

  @override
  Widget build(BuildContext context) {
    Color colorHadir = Colors.grey;
    if (mhs.isHadir == true) {
      colorHadir = Colors.green.shade300;
    } else if (mhs.isHadir == false) {
      colorHadir = Colors.grey;
    }
    return Container(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      margin: EdgeInsets.only(bottom: 12 + 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: colorHadir,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      mhs.NIM,
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      mhs.namaMhs,
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
