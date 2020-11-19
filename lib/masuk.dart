import 'package:flutter/material.dart';

class Masuk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text(
          'Masuk',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 40.0, right: 40.0, top: 20),
        child: ListView(
          children: [
            Column(
              children: [
                _title(),
                _textField(),
                _button(context),
                _textDaftar(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _title() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          'Masuk untuk nikmati kemudahan berdonasi sesama dan akses fitur yang lebih lengkap',
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }

  Widget _textField() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 16),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: UnderlineInputBorder(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.orangeAccent,
                width: 1,
              ),
            ),
            hintText: "Nomor Ponsel atau Email",
            contentPadding: EdgeInsets.only(top: 20),
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ],
    );
  }

  Widget _button(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50.0),
        ),
        InkWell(
          child: Container(
            width: double.infinity,
            child: RaisedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/beranda');
              },
              textColor: Colors.white,
              color: Colors.orangeAccent,
              child: Text('Lanjutkan'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _textDaftar() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.0),
        ),
        Text(
          'Belum punya akun? Daftar',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
