import 'package:flutter/material.dart';

class ItemImagen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/images/square_image.jpeg',
          width: 100.0,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}
