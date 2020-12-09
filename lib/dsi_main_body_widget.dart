import 'package:flutter/material.dart';

class DSIMainBodyWidget extends StatelessWidget {
  final String _countText;
  final String _warningText;
  final String _image;

  DSIMainBodyWidget(this._countText, this._warningText, this._image);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          _countText,
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
        SizedBox(height: 8.0),
        if (_warningText.isNotEmpty)
          Text(
            _warningText,
            style: TextStyle(color: Colors.red, fontSize: 24.0),
          ),
        SizedBox(height: 8.0),
        if (_image.isNotEmpty)
          Image(
            image: AssetImage(_image),
            height: 240,
          ),
      ],
    );
  }
}