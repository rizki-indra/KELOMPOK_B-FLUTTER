import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vscode_android/camera.dart';
import 'package:vscode_android/constans.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  static const routeName = "/home_screen";
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorPalette.appBar,
        elevation: 0.0,
        title: new Text('AyoBerbagi.id', textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .3,
            decoration: BoxDecoration(
              color: Colors.blueAccent[400],
              // image: DecorationImage(
              //     alignment: Alignment.topCenter,
              //     image: AssetImage('assets/images/top_header2.png')),
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
                            Text(
                              'Kelompok 2 SDGS 2',
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
                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: <Widget>[
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.network(
                                    'https://www.flaticon.com/svg/static/icons/svg/3408/3408591.svg',
                                    height: 90,
                                  ),
                                  Text('Dashboard',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Montserrat Medium',
                                        color: Color.fromRGBO(63, 63, 63, 1),
                                      )),
                                ],
                              )),
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.network(
                                    'https://www.flaticon.com/svg/static/icons/svg/3135/3135715.svg',
                                    height: 90,
                                  ),
                                  Text('About US',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Montserrat Medium',
                                        color: Color.fromRGBO(63, 63, 63, 1),
                                      )),
                                ],
                              )),
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.network(
                                    'https://www.flaticon.com/svg/static/icons/svg/3094/3094384.svg',
                                    height: 90,
                                  ),
                                  FlatButton(
                                      child: Text(
                                        'Kamera',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Montserrat Medium',
                                          color: Color.fromRGBO(63, 63, 63, 1),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, CameraScreen.routeName);
                                      }),
                                ],
                              )),
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.network(
                                    'https://www.flaticon.com/svg/static/icons/svg/1041/1041872.svg',
                                    height: 90,
                                  ),
                                  Text('Donasi',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Montserrat Medium',
                                        color: Color.fromRGBO(63, 63, 63, 1),
                                      )),
                                ],
                              )),
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.network(
                                    'https://www.flaticon.com/svg/static/icons/svg/3511/3511811.svg',
                                    height: 90,
                                  ),
                                  Text('Contact US',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Montserrat Medium',
                                        color: Color.fromRGBO(63, 63, 63, 1),
                                      )),
                                ],
                              )),
                          Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  SvgPicture.network(
                                    'https://www.flaticon.com/svg/static/icons/svg/3617/3617045.svg',
                                    height: 90,
                                  ),
                                  Text('Company',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontFamily: 'Montserrat Medium',
                                        color: Color.fromRGBO(63, 63, 63, 1),
                                      )),
                                ],
                              )),
                        ],
                        crossAxisCount: 2),
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
