import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'imagess/imgss/geterHome.png',
                width: double.infinity,
              ),
              Container(
                padding: EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    
                    Text(
                      'Geter\'s Membantu Sesama',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),

                    // Padding(
                    //   padding: EdgeInsets.only(top: 10),
                    // ),
                    Text('Donasi Bersama Untuk Membantu Sesama'),
                    Container(
                      padding: EdgeInsets.only(top:20),
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text('DONASI SEKARANG'),
                        textColor: Colors.white,
                        color: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        onPressed: () {
                          //Navigator.pushReplacementNamed(context, '/masuk');
                        },
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Yuk! Jadi anggota Geter\'s membantu untuk sesama anggota yang membutuhkan!',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
