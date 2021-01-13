import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vscode_android/donasi.dart';
import 'package:vscode_android/artikel.dart';
import 'package:vscode_android/constans.dart';

class Donasi extends StatelessWidget {
  
  static const routeName = "/donasi";

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: ColorPalette.appBar,
        elevation: 0.0,
        title: new Text('Tambah Donasi', textAlign: TextAlign.center),
        centerTitle: true,
      ),

      body: Stack(
          children: <Widget>[
            Container(
              height: size.height * .4,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/images/top_header3.png')
                ),
              ),
            ),

          SafeArea(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(

                children: <Widget>[
                  Container(
                    height: 94,
                    margin: EdgeInsets.only(bottom: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage('https://img.etimg.com/thumb/msid-72342792,width-640,resizemode-4,imgsize-578399/meet-the-man.jpg'),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(padding: EdgeInsets.only(bottom:00.0)),
                            Text('Kelompok 2 SDGS', style: TextStyle(fontFamily: 'Montserrat Medium', fontSize: 16, color: Colors.white),),
                            Text('Mobile TI Kelas A', style: TextStyle(fontFamily: 'Montserrat Medium', fontSize: 14, color: Colors.white),),
                          ],
                        )
                      ],
                    ),
                  ),

                  SizedBox(height: 10),
                  TextFormField(
                    initialValue: 'Masukkan Nama Lengkap .....',
                    
                    decoration: InputDecoration(
                      
                      labelText: 'Nama Lengkap',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 20),
                  TextFormField(
                    initialValue: 'Masukkan Alamat Email .....',
                    
                    decoration: InputDecoration(
                      
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  
                  SizedBox(height: 20),
                  TextFormField(
                    initialValue: 'Masukkan Jumlah Donasi .....',
                    
                    decoration: InputDecoration(
                      
                      labelText: 'Jumlah Donasi',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 20),
                  TextFormField(
                    initialValue: 'Masukkan Keterangan .....',
                    
                    decoration: InputDecoration(
                      
                      labelText: 'Keterangan',
                      border: OutlineInputBorder(),
                    ),
                  ),

                  SizedBox(height: 10),
                  FlatButton(
                  color: ColorPalette.buttonColor,
                  child: Text(
                    'Tambah Donasi',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.0,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, Artikel.routeName);
                  },
                ),
                  

                  ],
                ),
              ),
            ),
          ],
      ),
    );
  }
}