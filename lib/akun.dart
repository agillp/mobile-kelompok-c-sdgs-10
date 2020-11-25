import 'package:flutter/material.dart';
import 'package:geter_app/datacenter.dart';

class Akun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listAkun(context),
    );
  }
}
Widget _listAkun(BuildContext context) {
  return ListView.builder(
    itemCount: akunData.length,
    itemBuilder: (BuildContext context, int index) {
      AkunData data = akunData[index];
      return Card(
        child: ListTile(
          leading: Icon(data.iniIkon),
          title: Text(data.iniJudul),
          onTap: () {
            Navigator.pushNamed(context, '/akun$index');
          },
        ),
      );
    },
  );
}
