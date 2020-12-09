import 'package:dsi_app/dsi_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(
              'Home Page - DSI/BSI/UFRPE',
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            Image(image: AssetImage('images/logo/bsi-white.png'), height: 32),
          ],
        ),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.of(context).pushNamed('/dsiPage'),
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(90)),
          elevation: 12,
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width / 1.8,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.green,
                Colors.lightGreen,
              ]),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Start Application',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
