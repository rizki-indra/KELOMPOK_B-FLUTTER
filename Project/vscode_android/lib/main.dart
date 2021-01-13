import 'package:flutter/material.dart';
import 'package:vscode_android/camera.dart';
import 'package:vscode_android/datauser.dart';
import 'package:vscode_android/loginView.dart';
import 'package:vscode_android/home_screen.dart';
import 'package:vscode_android/artikel.dart';
import 'package:vscode_android/donasi.dart';
import 'package:vscode_android/dataartikel.dart';

import 'Registerview.dart';

void main() {
  var app = new MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ilkom',
      // home: LoginPage(),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        DataArtikel.routeName: (context) => DataArtikel(),
        Donasi.routeName: (context) => Donasi(),
        Artikel.routeName: (context) => Artikel(),
        GetDataUser.routeName: (context) => GetDataUser(),
        HomeScreen.routeName: (context) => HomeScreen(),
        RegisterPage.routeName: (context) => RegisterPage(),
        CameraScreen.routeName: (context) => CameraScreen()
      },
    );
  }
}
