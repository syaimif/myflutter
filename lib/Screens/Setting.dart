import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      child: Column(
        children: [
          Text(
            'Halaman Widget Seeting Gan',
            style: TextStyle(color: Colors.green),
          ),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green,
          ),
        ],
      ),
    ));
  }
}
