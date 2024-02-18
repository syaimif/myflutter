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
/*int diceCount = 1;*/

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
              Text('Wayahe Pemain : $pemain '),
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
                      onPressed: () {
                        diceCount = Random().nextInt(6) + 1;
                      },
                      child: Text('lempar Dadu')),
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
                        if (pemain == 1) {
                          pemain = 2;
                        } else {
                          pemain = 1;
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
                  '3',
                  style: TextStyle(fontSize: 35),
                ),
              ),
              SizedBox(
                height: spacingAntarRow,
              ),
              Row(
                children: [
                  Text('Poin :'),
                ],
              ),
              Row(
                children: [
                  Text('pemain 1 :'),
                ],
              ),
              Row(
                children: [
                  Text('Pemain 2 :'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Ronde 1',
                    style: TextStyle(),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
