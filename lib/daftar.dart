import 'package:flutter/material.dart';

class Daftar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Silahkan Mendaftar'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              children: [
                Image.network(
                  "https://i.ibb.co/7VWysTt/g8237.png",
                  width: 200.0,
                ),
                _nameField(),
                _emailField(),
                _passwordField(),
                _registerButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _nameField() {
    //MEMBUAT TEXT INPUT
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Nama Lengkap', //DENGAN LABEL Nama Lengkap
              ),
    );
  }

  Widget _emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'email@example.com',
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget _passwordField() {
    return TextFormField(
      obscureText: true, //KETIKA obsecureText bernilai TRUE
      //MAKA SAMA DENGAN TYPE PASSWORD PADA HTML
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter Password',
      ),
      //AKAN BERISI VALIDATION
    );
  }

  Widget _registerButton() {
    //MEMBUAT TOMBOL
    return RaisedButton(
      color: Colors.orangeAccent, //MENGATUR WARNA TOMBOL
      onPressed: () {},
      child: Text(
        'Daftar',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
