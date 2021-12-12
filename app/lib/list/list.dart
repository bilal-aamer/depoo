import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    final appTitle = 'Flutter Basic List Demo';  
  
    return MaterialApp(  
      title: appTitle,  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text(appTitle),  
        ),  
        body: ListView(  
          children: <Widget>[  
            ListTile(  
              leading: Icon(Icons.map),  
              title: Text('Map'),  
            ),  
            ListTile(  
              leading: Icon(Icons.photo_album),  
              title: Text('Album'),  
            ),  
            ListTile(  
              leading: Icon(Icons.phone),  
              title: Text('Phone'),  
            ),  
            ListTile(  
              leading: Icon(Icons.contacts),  
              title: Text('Contact'),  
            ),  
            ListTile(  
              leading: Icon(Icons.settings),  
              title: Text('Setting'),  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}  
Map body = new HashMap<String,String>();
body.putIfAbsent("phoneNumber", () => '20');
body.putIfAbsent("message",() => 'hi bbbb');
 return http.post('http://localhost:3000/twilio/notifyUsers', body: body).then((http.Response response){
   print(helocnsoocn);
 }
