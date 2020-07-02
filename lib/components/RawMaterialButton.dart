import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  RoundedIconButton(Icon child, Function onPressed) {
    _child = child;
    _onPressed = onPressed;
  }

  Icon _child;
  Function _onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: _child,
      onPressed: _onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
