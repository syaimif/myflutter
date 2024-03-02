import 'package:flutter/material.dart';
import 'package:pertemuan4_flutter/Screens/Account.dart';
import 'package:pertemuan4_flutter/Screens/Setting.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

double spacing = 12;
int currentIndexBottomNavBar = 0;
Widget currentHomeBody = homeBody();
String nameAppBar = 'Beranda';

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          nameAppBar,
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: currentHomeBody,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: currentIndexBottomNavBar,
        selectedItemColor: Colors.blueAccent,
        onTap: (indexClick) {
          currentIndexBottomNavBar = indexClick;
          if (currentIndexBottomNavBar == 0) {
            currentHomeBody = homeBody();
            nameAppBar = 'Beranda';
          } else if (currentIndexBottomNavBar == 1) {
            currentHomeBody = Akun();
            nameAppBar = 'Account';
          } else if (currentIndexBottomNavBar == 2) {
            currentHomeBody = Setting();
            nameAppBar = 'Setting';
          }
          setState(() {});
        },
      ),
    );
  }
}

//Stateless (stless) untuk melakukan fungsi yang sama seperti fungsi 4 tombol

class TombolBeranda extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final String route;
  const TombolBeranda(
      {super.key,
      required this.icon,
      required this.label,
      required this.color,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        padding: EdgeInsets.all(20),
        child: Ink(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, route);
            },
            child: Column(
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(
                  height: spacing - 4,
                ),
                Text(
                  label,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class homeBody extends StatelessWidget {
  const homeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Text('Selamat Datang di aplikasi Serbaguna'),
            SizedBox(
              height: spacing,
            ),
            Container(
              height: 200,
              color: Colors.grey,
              child: Center(
                child: Text('Isi dengan Gambar'),
              ),
            ),
            SizedBox(
              height: spacing,
            ),
            Column(
              children: [
                Row(
                  children: [
                    TombolBeranda(
                      icon: Icons.people,
                      label: 'Absensi Mahasiswa',
                      color: Colors.green,
                      route: '/absensi-mahasiswa',
                    ),
                    SizedBox(
                      height: spacing,
                      width: spacing,
                    ),
                    TombolBeranda(
                      icon: Icons.games,
                      label: 'Game Lempar Dadu',
                      color: Colors.red,
                      route: '/game-lempar-dadu',
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: spacing,
            ),
            Column(
              children: [
                Row(
                  children: [
                    TombolBeranda(
                      icon: Icons.camera,
                      label: 'Scan QR Code',
                      color: Colors.blue,
                      route: '/scan-qr',
                    ),
                    SizedBox(
                      height: spacing,
                      width: spacing,
                    ),
                    TombolBeranda(
                      icon: Icons.settings,
                      label: 'Setting Gameplanmu',
                      color: Colors.orange,
                      route: '/settings',
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
