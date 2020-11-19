import 'package:flutter/material.dart';
import 'home.dart';
import 'akun.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  _BerandaState({this.judulnya});
  final String judulnya;
  int _selectedTabIndex = 0;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _namePage = [
      Text('Home'),
      Text('Donasi'),
      Text('Akun'),
    ];

    final _listPage = [
      Home(),
      Text('Halaman Donasi'),
      Akun(),
    ];
    final _bottomNavBarItems = [
      BottomNavigationBarItem(
        icon: Icon(Icons.home_rounded),
        title: Text('home'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text('donasi'),
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        title: Text('akun'),
      ),
    ];
    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.orangeAccent,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: _namePage[_selectedTabIndex],
      ),
      body: Center(
        child: _listPage[_selectedTabIndex],
      ),
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
