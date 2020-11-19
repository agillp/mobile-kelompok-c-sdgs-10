import 'dart:io';

import 'package:flutter/material.dart';

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView( //ListView
        children: [
          Container(
            child: Column(
              children: [
                RaisedButton(
                  color: Colors.white,
                  padding: EdgeInsets.only(bottom: 13),
                  child: Daftar(
                    ikonnya: Icons.account_circle_rounded,
                    namanya: 'Hi Username',
                  ),
                  onPressed: () {
                    //Navigator.pushReplacementNamed(context, '/start');
                  },
                ),
                RaisedButton(
                    color: Colors.white,
                    padding: EdgeInsets.only(bottom: 13),
                    child: Daftar(
                      ikonnya: Icons.wallet_membership_rounded,
                      namanya: 'Dompet Anda',
                    ),
                    onPressed: () {
                      //Navigator.pushReplacementNamed(context, '/start');
                    }),
                RaisedButton(
                    color: Colors.white,
                    padding: EdgeInsets.only(bottom: 13),
                    child: Daftar(
                      ikonnya: Icons.settings,
                      namanya: 'Pengaturan',
                    ),
                    onPressed: () {
                      //Navigator.pushReplacementNamed(context, '/start');
                    }),
                RaisedButton(
                    color: Colors.white,
                    padding: EdgeInsets.only(bottom: 13),
                    child: Daftar(
                      ikonnya: Icons.help,
                      namanya: 'Bantuan',
                    ),
                    onPressed: () {
                      //Navigator.pushReplacementNamed(context, '/start');
                    }),
                RaisedButton(
                    color: Colors.white,
                    padding: EdgeInsets.only(bottom: 13),
                    child: Daftar(
                      ikonnya: Icons.favorite,
                      namanya: 'Tentang Geter\'s',
                    ),
                    onPressed: () {
                      //Navigator.pushReplacementNamed(context, '/start');
                    }),
                RaisedButton(
                    color: Colors.white,
                    padding: EdgeInsets.only(bottom: 13),
                    child: Daftar(
                      ikonnya: Icons.logout,
                      namanya: 'Keluar',
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/start');
                    }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Daftar extends StatelessWidget {
  Daftar({this.ikonnya, this.namanya});

  final IconData ikonnya;
  final String namanya;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              ikonnya,
              color: Colors.orangeAccent,
            ),
            title: Text(namanya),
          ),
        ],
      ),
      //   padding: EdgeInsets.only(top: 20),
      // ListTile(
      //   leading: Icon(
      //     Icons.account_circle_rounded,
      //     size: 50,
      //   ),
      //   title: Text(
      //     'Hi Username',
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      // ),
    );
  }
}
