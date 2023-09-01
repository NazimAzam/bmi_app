import 'package:bmi_app/calculator_brain.dart';
import 'package:bmi_app/card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  final String resultText;
  final String bmiResult;
  final String interpretation;
  const ResultsPage(
      {Key? key,
      required this.bmiResult,
      required this.interpretation,
      required this.resultText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Results',
              style: kUpperStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReuseableCard(
              color: kActiveCardcolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kUpperTextSTyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
