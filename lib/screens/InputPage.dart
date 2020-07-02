import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/RawMaterialButton.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/IconColumnWidget.dart';
import '../components/ReusbleCardWidget.dart';
import '../components/bottom_button.dart';
import '../components/constants.dart';

enum Gender { MALE, FEMALE }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender _selectedGender;

  int _height = 180;
  int _weight = 60;
  int _age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedGender = Gender.MALE;
                    });
                  },
                  child: ResuableCard(
                    color: _selectedGender == Gender.MALE
                        ? kActiveCardColour
                        : kInActiveCardColour,
                    child: IconColumn(
                        icondata: FontAwesomeIcons.mars, text: "MALE"),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedGender = Gender.FEMALE;
                    });
                  },
                  child: ResuableCard(
                    color: _selectedGender == Gender.FEMALE
                        ? kActiveCardColour
                        : kInActiveCardColour,
                    child: IconColumn(
                        icondata: FontAwesomeIcons.venus, text: "FEMALE"),
                  ),
                )),
              ],
            ),
          ),
          Expanded(
            child: ResuableCard(
              color: kActiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HEIGHT",
                    style: kTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        _height.toString(),
                        style: kLargeTextStyle,
                      ),
                      Text(
                        "cm",
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        overlayColor: KSliderOverlayColour,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 10.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 20.0),
                        thumbColor: KSliderColour),
                    child: Slider(
                      value: _height.toDouble(),
                      inactiveColor: Colors.grey,
                      min: 120.0,
                      max: 220.0,
                      onChanged: (newValue) {
                        setState(() {
                          _height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ResuableCard(
                  color: kActiveCardColour,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "WEIGHT",
                        style: kTextStyle,
                      ),
                      Text(
                        _weight.toString(),
                        style: kLargeTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RoundedIconButton(Icon(FontAwesomeIcons.plus), () {
                            setState(() {
                              _weight++;
                            });
                          }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundedIconButton(Icon(FontAwesomeIcons.minus), () {
                            setState(() {
                              _weight--;
                            });
                          })
                        ],
                      ),
                    ],
                  ),
                )),
                Expanded(
                  child: ResuableCard(
                    color: kActiveCardColour,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: kTextStyle,
                        ),
                        Text(
                          _age.toString(),
                          style: kLargeTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundedIconButton(Icon(FontAwesomeIcons.plus), () {
                              setState(() {
                                _age++;
                              });
                            }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundedIconButton(Icon(FontAwesomeIcons.minus), () {
                              setState(() {
                                _age--;
                              });
                            })
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: "CALCULATE",
            onPressed: () {
              CalculatorBrain calculator =
                  CalculatorBrain(weight: _weight, height: _height);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultsPage(
                            BMIResult: calculator.calculateBMI(),
                            resultText: calculator.getResult(),
                            interpretation: calculator.getInterpretation(),
                          )));
            },
          ),
        ],
      ),
    );
  }
}
