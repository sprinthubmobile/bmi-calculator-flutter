import 'package:bmi_calculator/components/ReusbleCardWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../components/constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.BMIResult,
      @required this.resultText,
      @required this.interpretation});

  final String BMIResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: KTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ResuableCard(
              color: kActiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    BMIResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              title: "RE-CALCULATE",
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
    );
  }
}
