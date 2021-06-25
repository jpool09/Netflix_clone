import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(
                  color: Colors.red,
                  width: 2.0,
                ),
              ),
              child: ClipOval(
                child: Image.asset(
                  'assets/images/header.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              'assets/images/title-circle.png',
              width: 75.0,
            )
          ],
        ),
        SizedBox(width: 10.0,)
      ],
    );
  }
}
