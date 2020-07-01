import 'package:flutter/material.dart';

const TextStyle textStyle = TextStyle(fontSize: 18.0);
const double iconSize = 80.0;
const double sizedBoxSpacing = 15.0;

class IconColumn extends StatelessWidget {
  IconColumn({@required IconData icondata, @required String text}) {
    this._icon = icondata;
    this._text = text;
  }

  String _text;
  IconData _icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          _icon,
          size: iconSize,
        ),
        SizedBox(
          height: sizedBoxSpacing,
        ),
        Text(
          _text,
          style: textStyle,
        )
      ],
    );
  }
}
