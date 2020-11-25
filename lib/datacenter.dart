import 'package:flutter/material.dart';

import 'dompet.dart';

class AkunData {
  final IconData iniIkon;
  final String iniJudul;

  const AkunData({this.iniIkon, this.iniJudul});
}

List akunData = [
  AkunData(
    iniIkon: Icons.account_circle_rounded,
    iniJudul: 'Hello World',
  ),
  AkunData(
    iniIkon: Icons.wallet_membership_rounded,
    iniJudul: 'Dompet Donasi',
  ),
  AkunData(
    iniIkon: Icons.settings,
    iniJudul: 'Pengaturan',
  ),
  AkunData(
    iniIkon: Icons.help,
    iniJudul: 'Bantuan',
  ),
  AkunData(
    iniIkon: Icons.favorite,
    iniJudul: 'Tentang Geter\'s',
  ),
  AkunData(
    iniIkon: Icons.logout,
    iniJudul: 'Keluar',
  ),
];

class RiwayatDonasi {
  final String iniJudul;
  final String tanggal;
  final String donasi;

  const RiwayatDonasi({this.iniJudul, this.tanggal, this.donasi});
}

List riwayatDonasi = [
  RiwayatDonasi(
    iniJudul: 'Donasi Bersama',
    tanggal: '14 Nov 2020',
    donasi: 'Rp20.000',
  ),
  RiwayatDonasi(
    iniJudul: 'Donasi Sahabat Kita Jarjit Sing Penyakit Panu',
    tanggal: '14 Nov 2020',
    donasi: 'Rp10.000',
  ),
  RiwayatDonasi(
    iniJudul: 'Donasi Bersama',
    tanggal: '14 Nov 2020',
    donasi: 'Rp200.000',
  ),
];
