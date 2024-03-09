import 'package:flutter/material.dart';
import 'package:pertemuan4_flutter/Objects/Matkul.dart';

class PilihanKelas extends StatelessWidget {
  final Matkul matkul;

  const PilihanKelas({
    super.key,
    required this.matkul,
  });

  @override
  Widget build(BuildContext context) {
    Color colorFakultas = Colors.white;
    if (matkul.fakultas == "SAINTEK") {
      colorFakultas = Colors.cyan;
    } else if (matkul.fakultas == "FAI") {
      colorFakultas = Colors.yellow;
    } else if (matkul.fakultas == "FIK") {
      colorFakultas = Colors.pinkAccent;
    } else if (matkul.fakultas == "FBBP") {
      colorFakultas = Colors.red;
    }

    return Container(
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
                matkul.namaMatkul,
                style: TextStyle(fontSize: 23),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        matkul.waktuTerjadwal,
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                      Text(
                        matkul.ruangan,
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ]),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: colorFakultas,
            child: Text(matkul.dosenPengampu),
          ),
        ],
      ),
    );
  }
}
