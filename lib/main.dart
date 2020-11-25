import 'package:flutter/material.dart';
import 'package:geter_app/dompet.dart';
import 'package:geter_app/start.dart';
import 'app.dart';
import 'dasbor.dart';
import 'masuk.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Fonts',
      theme: ThemeData(fontFamily: 'Nunito'),
      initialRoute: '/',
      routes: {
        '/': (context) => Dashboard(),
        '/start': (context) => Start(),
        '/masuk': (context) => Masuk(),
        '/beranda': (context) => Beranda(),
        '/akun0': (context) => Dompet(),
      },
    );
  }
}
