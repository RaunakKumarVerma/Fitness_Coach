import 'package:flutter/material.dart';
import 'package:bmi_calculater/constants.dart';
import 'package:bmi_calculater/components/reusable_card.dart';
import 'package:bmi_calculater/components/bottom_button.dart';
import 'package:bmi_calculater/src/pages/index.dart';
import 'package:bmi_calculater/components/round_icon_button.dart';
import 'package:bmi_calculater/components/icon_content.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),

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
                'Your Result',
                style:TextStyle(fontSize: 50.0,
  fontWeight: FontWeight.w900,color:Color(0xFF45526c) ,)
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: TextStyle( color: Color(0xFF542e71),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,),
                  ),
                  Text(
                    bmiResult,
                    style: TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,color: Color(0xFF542e71)

),
                  ),
                  Text(
                    interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(
  fontSize: 22.0,color: Color(0xFF542e71)
),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              colour: kBottomContainerColour,
              onPress: () {
    Navigator.push(context,
    new MaterialPageRoute(builder: (context) => new IndexPage()),);
    },

              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                   Text(
                    'Consult Fitness Coach',
                    textAlign: TextAlign.center,
                    style: kLargeButtonTextStyle,
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: <Widget>[
                  //     RoundIconButton(
                  //         icon: Icons.video_call,
                  //         onPressed: () {
                  //           Navigator.push(context,
                  //             new MaterialPageRoute(builder: (context) => new IndexPage()),);
                  //         }),
                  //     SizedBox(
                  //       width: 10.0,
                  //     ),
                  //
                  //   ],
                  // ),
                ],
              ),
            ),
          ),

          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
