import 'package:flutter/material.dart';

import 'constants.dart';

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
          size: kIconSize,
        ),
        SizedBox(
          height: kSizedBoxSpacing,
        ),
        Text(
          _text,
          style: kTextStyle,
        )
      ],
    );
  }
}
