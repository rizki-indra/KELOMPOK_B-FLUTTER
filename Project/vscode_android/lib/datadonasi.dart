import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vscode_android/constans.dart';
import 'package:vscode_android/donasi.dart';
import 'package:vscode_android/artikel.dart';

class DataDonasi extends StatefulWidget {
  @override
  _DataDonasiState createState() => _DataDonasiState();
  static const routeName = "/DataDonasi";
}

class _DataDonasiState extends State<DataDonasi> {
  String nemail;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.appBar,
        elevation: 0.0,
        title: new Text('Data Donasi', textAlign: TextAlign.center),
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
                    image: AssetImage('assets/images/top_header3.png')),
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
                            backgroundImage: NetworkImage(
                                'https://img.etimg.com/thumb/msid-72342792,width-640,resizemode-4,imgsize-578399/meet-the-man.jpg'),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(bottom: 00.0)),
                              Text(
                                'Kelompok 2 SDGS',
                                style: TextStyle(
                                    fontFamily: 'Montserrat Medium',
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                              Text(
                                'Mobile TI Kelas A',
                                style: TextStyle(
                                    fontFamily: 'Montserrat Medium',
                                    fontSize: 14,
                                    color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'DATA DONASI',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(height: 15),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.local_atm),
                            title:
                                const Text('2.000.000'),
                            subtitle: Text(
                              'Donatur : Rifqie Indra Firdaus',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                         
                          Image.asset('assets/images/card-sample-image.jpeg'),
                        ],
                      ),
                    ),
                    SizedBox(height: 25),
                    Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.local_atm),
                            title:
                                const Text('5.000.000'),
                            subtitle: Text(
                              'Donatur : Rifqie Indra Firdaus',
                              style: TextStyle(
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                          ),
                          
                          Image.asset('assets/images/card-sample-image.jpeg'),
                        ],
                      ),
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
