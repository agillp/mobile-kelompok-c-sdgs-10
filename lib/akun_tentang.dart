import 'package:flutter/material.dart';
import 'package:here_sdk/mapview.dart';
import 'package:here_sdk/core.dart';

class AkunTentang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Tentang Geter\'s'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Geter\'s',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                  'Together To Help Others, atau disebut Geter\'s ialah aplikasi yang dibuat dengan tujuan agar pengguna dapat menabung atau mendonasi uang secara bersama-sama yang akan disumbangkan kepada sesama penyumbang yang terkena musibah dan kurang dalam biaya'),
              Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Text(
                  'No. Telp',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                '0823-3124-6538',
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Text(
                  'E-Mail',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                'email@geters.com',
              ),
              Padding(
                padding: EdgeInsets.only(top: 18.0),
                child: Text(
                  'Alamat',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Text('SumberSari, Jember'),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(18.0),
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text('Map'),
                    textColor: Colors.orangeAccent,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/map');
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
