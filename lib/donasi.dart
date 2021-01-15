import 'package:flutter/material.dart';
import 'package:geter_app/datacenter.dart';

class Donasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listRiwayatDonasi(context),
    );
  }

  Widget _listRiwayatDonasi(BuildContext context) {
    return ListView.builder(
        itemCount: riwayatDonasi.length,
        itemBuilder: (BuildContext context, int index) {
          RiwayatDonasi datax = riwayatDonasi[index];
          return Card(
            child: ListTile(
              
              title: Text(
                datax.iniJudul,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    datax.tanggal,
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(' | '),
                  Text(
                    datax.donasi,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/donasi$index');
              },
            ),
          );
        });
  }
}