import 'package:flutter/material.dart';

class Akun extends StatefulWidget {
  const Akun({super.key});

  @override
  State<Akun> createState() => _AkunState();
}

class _AkunState extends State<Akun> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [
          Text(
            'Ini adalah widget body Account',
            style: TextStyle(color: Colors.orange),
          )
        ],
      ),
    ));
  }
}
