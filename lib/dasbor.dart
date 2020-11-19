import 'dart:ui';

import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orangeAccent,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //IMAGE
              Container(
                margin: EdgeInsets.only(bottom: 30.0),
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('imagess/imgss/geterLogo.png'),
                  ),
                ),
              ),
              
              Text(
                'GETER\'S',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 30.0,
                ),
              ),

              //TEKS JUDUL
              Text(
                'TOGETHER TO HELP OTHERS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Bantu Sesama dengan Bersama Sama',
                style: TextStyle(color: Colors.white),
              ),

              InkWell(
                child: Container(
                  padding: EdgeInsets.all(18.0),
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text('Mulai'),
                    textColor: Colors.orangeAccent,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/start');
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
