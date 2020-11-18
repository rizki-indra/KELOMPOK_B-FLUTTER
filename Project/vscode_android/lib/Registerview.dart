import 'package:flutter/material.dart';
import 'package:vscode_android/constans.dart';
import 'package:vscode_android/loginView.dart';

class RegisterPage extends StatelessWidget {
  static const routeName = "/registerPage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorPalette.primaryColor,
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Center(
              child: Column(
                children: <Widget>[
                  iconRegister(),
                  titleDescription(),
                  textField(),
                  registerButton(context),
                  loginButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget iconRegister() {
    return Image.asset(
      "assets/images/icon_login.png",
      width: 150.0,
      height: 250.0,
    );
  }

  Widget titleDescription() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        Text(
          "Registration",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
      ],
    );
  }

  Widget textField() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 3.0,
              ),
            ),
            hintText: "Masukkan Email Anda ..... ",
            hintStyle: TextStyle(color: ColorPalette.hintColor, fontSize: 12.0),
          ),
          style: TextStyle(color: Colors.blue),
          obscureText: true,
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 3.0,
              ),
            ),
            hintText: "Masukkan Password Anda ..... ",
            hintStyle: TextStyle(color: ColorPalette.hintColor, fontSize: 12.0),
          ),
          style: TextStyle(color: Colors.blue),
          obscureText: true,
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: InputDecoration(
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
                width: 3.0,
              ),
            ),
            hintText: "Konfirmasi Password Anda ..... ",
            hintStyle: TextStyle(color: ColorPalette.hintColor, fontSize: 12.0),
          ),
          style: TextStyle(color: Colors.blue),
          obscureText: true,
          autofocus: false,
        ),
      ],
    );
  }

  Widget registerButton(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16.0),
        ),
        RaisedButton(
          color: ColorPalette.buttonColor,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            padding: EdgeInsets.symmetric(vertical: 10.0),
            width: double.infinity,
            child: Text(
              'Daftar Akun',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
      ],
    );
  }

  Widget loginButton(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'Sudah memiliki akun ?',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 12.0,
          ),
        ),
        FlatButton(
          padding: EdgeInsets.all(0.0),
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.blue,
              fontSize: 11.0,
            ),
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
          },
        ),
      ],
    );
  }
}
