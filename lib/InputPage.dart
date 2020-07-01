import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'IconColumnWidget.dart';
import 'ReusbleCardWidget.dart';

const double buttonContainerHeight = 80.0;
const Color cardColour = Color(0xFF1D1E33);
const Color textColour = Color(0xFF8D8E98);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ResuableCard(
                  color: cardColour,
                  child:
                      IconColumn(icondata: FontAwesomeIcons.mars, text: "MALE"),
                )),
                Expanded(
                    child: ResuableCard(
                  color: cardColour,
                  child: IconColumn(
                      icondata: FontAwesomeIcons.venus, text: "FEMALE"),
                )),
              ],
            ),
          ),
          Expanded(child: ResuableCard(color: cardColour)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ResuableCard(color: cardColour)),
                Expanded(child: ResuableCard(color: cardColour)),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: buttonContainerHeight,
          ),
        ],
      ),
    );
  }
}
