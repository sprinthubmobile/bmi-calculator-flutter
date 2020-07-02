import 'package:flutter/material.dart';

import 'constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required String title, Function onPressed}) {
    _onPressed = onPressed;
    _title = title;
  }

  Function _onPressed;
  String _title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onPressed,
      child: Container(
        child: Center(
          child: Text(
            _title,
            style: kLargeTextStyle,
          ),
        ),
        color: Color(0xFFEB1555),
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kButtonContainerHeight,
      ),
    );
  }
}
