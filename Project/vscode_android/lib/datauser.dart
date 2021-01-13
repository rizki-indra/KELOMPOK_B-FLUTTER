import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:vscode_android/constans.dart';

class GetDataUser extends StatelessWidget {
   static const routeName = "/User";
  final String apiUrl = "https://reqres.in/api/users";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(apiUrl);
    return json.decode(result.body)['data'];
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
       backgroundColor: ColorPalette.appBar,
        elevation: 0.0,
        title: new Text('Data User', textAlign: TextAlign.center),
        centerTitle: true,

      ),
      
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            NetworkImage(snapshot.data[index]['avatar']),
                      ),
                      title: Text(snapshot.data[index]['first_name'] + " " + snapshot.data[index]['last_name']),
                      subtitle: Text(snapshot.data[index]['email']),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}