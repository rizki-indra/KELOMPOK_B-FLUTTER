import 'package:flutter/material.dart';
import 'package:vscode_android/camera.dart';
import 'package:vscode_android/loginView.dart';
import 'package:vscode_android/home_screen.dart';

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
        HomeScreen.routeName: (context) => HomeScreen(),
        RegisterPage.routeName: (context) => RegisterPage(),
        CameraScreen.routeName: (context) => CameraScreen()
      },
    );
  }
}
