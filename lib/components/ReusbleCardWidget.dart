import 'package:flutter/material.dart';

class ResuableCard extends StatelessWidget {
  ResuableCard({@required Color color, @required Widget child}) {
    this._color = color;
    this._child = child;
  }

  Color _color;
  Widget _child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _child,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: _color),
    );
  }
}
