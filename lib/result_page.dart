import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reuseable_card.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({@required this.bmiResult,@required this.resultText,@required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: kTitleTextStyle, ),
            ),
          ),
          Expanded(
            flex: 5,
            child: BlocCont(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Text(
                      resultText.toUpperCase(),
                      style: (double.parse(bmiResult)>=18.5 && double.parse(bmiResult) <25) ?
                      kResultTextStyle: (double.parse(bmiResult)<18.5)?kResultTextStyle2 : kResultTextStyle3,
                    ),
                  ),
                  Center(child: Text(bmiResult, style: kBMITextStyle,)),
                  Text(interpretation,style: kBodyTextStyle, textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          BottomButton(name: 'RE-CALCULATE', onTap: (){Navigator.pop(context);},),
        ],

      ),

    );
  }
}
