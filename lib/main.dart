import 'dart:math';

import 'package:flutter/material.dart';

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
    );
  }
}

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

double spacingAntarRow = 13;
/*Color warnaBackground = Colors.white38; */
bool isNyala = true;
int pemain = 1;
int hasilLempar = 0;
int ronde = 0;
int skorPemain1 = 0;
int skorPemain2 = 0;
bool isSudahWayah = false;
List<int> recordSkorPemain1 = [];
List<int> recordSkorPemain2 = [];

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Text(
            'Beranda',
            style: TextStyle(fontWeight: FontWeight.w700),
          ),
        ),
        body: Container(
          color: isNyala == true ? Colors.white : Colors.grey,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                'Wayahe Pemain : $pemain ',
                style: TextStyle(fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: spacingAntarRow,
              ),
              Row(
                children: [
                  Expanded(child: Text('Ganti warna background')),
                  ElevatedButton(
                      onPressed: () {
                        isNyala = !isNyala;
                        setState(() {});
                      },
                      child: Text('Ganti Warna')),
                ],
              ),
              SizedBox(
                height: spacingAntarRow,
              ),
              Row(
                children: [
                  Expanded(child: Text('Lempar Dadu')),
                  ElevatedButton(
                      onPressed: isSudahWayah == true
                          ? null
                          : () {
                              isSudahWayah = true;
                              Random randomDadu = Random();
                              hasilLempar = Random().nextInt(6) + 1;
                              if (pemain == 1) {
                                skorPemain1 = skorPemain1 + hasilLempar;
                                recordSkorPemain1.add(hasilLempar);
                              } else {
                                skorPemain2 = skorPemain2 + hasilLempar;
                                recordSkorPemain2.add(hasilLempar);
                              }
                              print('Hasil lempar Pemain 1' +
                                  recordSkorPemain1.toString());
                              print('Hasil lempar Pemain 2' +
                                  recordSkorPemain2.toString());

                              if (recordSkorPemain2.length == 3) {
                                String pesanMenang = "";
                                if (skorPemain1 > skorPemain2) {
                                  pesanMenang = "Pemain 1 yang Menang";
                                } else if (skorPemain1 < skorPemain2) {
                                  pesanMenang = "Pemain 2 yang Menang";
                                } else {
                                  pesanMenang = "Seri";
                                }

                                print(pesanMenang);

                                ronde = 0;
                                skorPemain1 = 0;
                                skorPemain2 = 0;
                                recordSkorPemain1 = [];
                                recordSkorPemain2 = [];

                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text(pesanMenang)));
                              }

                              setState(() {});
                            },
                      child: Text('Lempar Dadu')),
                ],
              ),
              SizedBox(
                height: spacingAntarRow,
              ),
              Row(
                children: [
                  Expanded(child: Text('Ganti Pemain')),
                  ElevatedButton(
                      onPressed: () {
                        isSudahWayah = false;
                        ronde++;
                        if (pemain == 1) {
                          pemain = 2;
                        } else {
                          pemain = 1;
                          print(ronde);
                        }
                        setState(() {});
                      },
                      child: Text('Ganti Pemain')),
                ],
              ),
              SizedBox(
                height: spacingAntarRow,
              ),
              CircleAvatar(
                radius: 80,
                backgroundColor: Colors.yellow,
                child: Text(
                  hasilLempar.toString(),
                  style: TextStyle(fontSize: 35),
                ),
              ),
              SizedBox(
                height: spacingAntarRow,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'Skor Pemain 1 :',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('$recordSkorPemain1'),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Skor Pemain 2 :',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('$recordSkorPemain2'),
                            ],
                          ),
                        ],
                      )));
                    },
                    child: Text('Poin'),
                  )
                ],
              ),
              Row(
                children: [
                  Text('Pemain 1 :' + skorPemain1.toString()),
                ],
              ),
              Row(
                children: [
                  Text('Pemain 2 :' + skorPemain2.toString()),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Ronde : ${ronde ~/ 2 + 1}',
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
