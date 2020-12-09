import 'dart:math';

import 'package:flutter/material.dart';

import 'dsi_main_body_widget.dart';

class DSIPage extends StatefulWidget {
  @override
  _DSIPageState createState() => _DSIPageState();
}

class _DSIPageState extends State<DSIPage> {
  final _warnings = [
    'JÁ DEU BENÇA!',
    'VAI QUEBRAR O CELULAR!',
    'PARA VÉI!',
    'QUE DEDO NERVOSO!',
    'PRA QUE ISSO?!',
  ];
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  String _getCountText() {
    return 'Você clicou $_counter vezes no botão.';
  }

  String _getWarningText() {
    String result = '';
    if (_counter > 5) {
      var idx = Random().nextInt(_warnings.length);
      result = _warnings[idx];
    }
    return result;
  }

  String _getImageName() {
    //abra o arquivo 'pubspec.yaml' e veja as entradas na seção 'assets'.
    //para incluir novas imagens, basta incluir novas entradas nesta seção.
    String result;
    if (_counter == 0) {
      result = '';
    } else if (_counter > 5) {
      result = 'images/jadeu.png';
    } else if (_counter > 2) {
      result = 'images/thug2.gif';
    } else {
      result = 'images/thug1.jpg';
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'My First App - DSI/BSI/UFRPE',
              style: TextStyle(fontSize: 14),
            ),
            Spacer(),
            Image(image: AssetImage('images/logo/bsi-white.png'), height: 32),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              DSIMainBodyWidget(
                  _getCountText(), _getWarningText(), _getImageName()),
              Spacer(),
              FlatButton(
                onPressed: _resetCounter,
                color: Colors.green,
                child: Text(
                  'Reset',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
