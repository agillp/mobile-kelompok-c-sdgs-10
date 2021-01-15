import 'package:flutter/material.dart';
import 'package:geter_app/maps.dart';
import 'package:geter_app/daftar.dart';
import 'package:geter_app/akun_akun.dart';
import 'package:geter_app/start.dart';
import 'akun_tentang.dart';
import 'app.dart';
import 'dasbor.dart';
import 'masuk.dart';
import 'package:here_sdk/core.dart';

void main() {
  SdkContext.init(IsolateOrigin.main);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Fonts',
      theme: ThemeData(fontFamily: 'Nunito'),
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        '/start': (context) => Start(),
        '/masuk': (context) => Masuk(),
        '/beranda': (context) => Beranda(),
        '/daftar': (context) => Daftar(),
        '/map': (context) => AkunMaps(),
        '/akun0': (context) => AkunAkun(),
        '/akun4': (context) => AkunTentang(),
        '/akun5': (context) => Start(),
        
      },
    );
    return materialApp;
  }
}
