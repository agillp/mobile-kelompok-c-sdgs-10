import 'package:flutter/material.dart';

class Start extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.orangeAccent,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.0),
                child: Text(
                  'GETER\'S',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white),
                ),
              ),
              Container(
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('imagess/Flat/loginHuman.png'),
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text('Masuk'),
                        textColor: Colors.orangeAccent,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, '/masuk');
                        },
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      width: double.infinity,
                      child: OutlineButton(
                        child: Text('Daftar'),
                        textColor: Colors.white,
                        borderSide: BorderSide(width: 1.0, color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        onPressed: () {
                          //Navigator.pushNamed(context, '/start');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
