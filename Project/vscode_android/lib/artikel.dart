import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vscode_android/constans.dart';
import 'package:vscode_android/donasi.dart';
import 'package:vscode_android/artikel.dart';

class Artikel extends StatefulWidget {
  @override
  _ArtikelState createState() => _ArtikelState();
  static const routeName = "/artikel";
}

class _ArtikelState extends State<Artikel> {
  String nemail;
  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(

      appBar: AppBar(
        backgroundColor: ColorPalette.appBar,
        elevation: 0.0,
        title: new Text('Tambah Artikel', textAlign: TextAlign.center),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
              child: Stack(
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

                    SizedBox(height: 15),
                    TextFormField(
                      initialValue: 'Masukkan Judul Artikel',
                      decoration: InputDecoration(
                        labelText: 'Judul',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 30),
                    TextFormField(
                      initialValue: 'Masukkan Penulis',
                      
                      decoration: InputDecoration(
                        labelText: 'Penulis',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    
                    SizedBox(height: 30),
                    TextFormField(
                      initialValue: 'Masukkan Deskripsi',
                    
                      decoration: InputDecoration(
                        labelText: 'Deskripsi',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 30),
                    FlatButton(
                      padding: EdgeInsets.all(20.0),
                      color: ColorPalette.buttonColor,
                      child: Text(
                        'Tambah Artikel',
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
      ),
    );
  }
}